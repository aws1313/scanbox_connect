/*
ScanboxConnect: mobile app to integrate with Homebox and other self-hosted services such as Jellyfin
Copyright (C) 2026 aws1313

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU Affero General Public License as published
by the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Affero General Public License for more details.

You should have received a copy of the GNU Affero General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.
*/

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:hive_ce/hive.dart';
import 'package:hive_ce_flutter/adapters.dart';
import 'package:scanbox_connect/models/account.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Settings"),),
        body: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text("Accounts und Services"),
              onTap: () => Get.to(() => AccountSettingsPage()),
            ),
            AboutListTile(
              icon: Icon(Icons.info),
              applicationName: "ScanboxConnect",
              child: Text("Über ScanboxConnect und Kontaktdaten (Impressum)"),
            )
          ],
        )
    );
  }
}

class AccountSettingsPage extends StatelessWidget {
  const AccountSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add), 
          onPressed: () => Get.dialog(
            AccountEditDialog(null),
            barrierDismissible: false
          )
      ),
      body: ValueListenableBuilder(
          valueListenable: Hive.box<Account>("accounts").listenable(),
          builder: (context, Box<Account> box, _){
            if (box.isEmpty){
              return Center(child: Text("No account yet"),);
            }

            return ListView(
              children: box.values.map((v) => ListTile(
                title: Text(v.displayName),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(onPressed: () => Get.dialog(AccountEditDialog(v), barrierDismissible: false), icon: Icon(Icons.edit)),
                    IconButton(
                        onPressed: () => Get.dialog(AlertDialog(
                          title: Text("Are you sure you want to delete '${v.displayName}'?"),
                          actions: [
                            TextButton(onPressed: () => Get.back(), child: Text("Cancel")),
                            TextButton(onPressed: (){
                              box.delete(v.id);
                              Get.back();
                            }, child: Text("Sure!")),
                          ],
                        ), barrierDismissible: false),
                        icon: Icon(Icons.delete)
                    )
                  ],
                ),
              )).toList(),
            );
          })
      );
  }
}

class AccountEditDialog extends StatefulWidget {
  const AccountEditDialog(this.account, {super.key});

  final Account? account;

  @override
  State<AccountEditDialog> createState() => _AccountEditDialogState();
}

class _AccountEditDialogState extends State<AccountEditDialog> {
  late final bool createMode;

  final _formKey = GlobalKey<FormState>();

  AccountType? _selectedService;
  LoginType? _selectedLogin = LoginType.password;

  final TextEditingController _displayNameController = TextEditingController();
  final TextEditingController _urlController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    createMode = widget.account == null;

    if (!createMode) {
      _selectedService = widget.account!.type;
      _selectedLogin = widget.account!.loginType;

      _displayNameController.text = widget.account!.displayName;
      _urlController.text = widget.account!.baseUrl;
      _usernameController.text = widget.account!.username;
    }

    super.initState();
  }

  @override
  void dispose() {

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                // service type
                DropdownButtonFormField(
                  initialValue: _selectedService,
                  items: AccountType.values.map((v) => DropdownMenuItem(value: v, child: Text(v.name))).toList(),
                  onChanged: (v) => setState(() => (_selectedService = v)),
                  decoration: InputDecoration(
                    hintText: "Select service"
                  ),
                  validator: (v){
                    if (v == null) return "Select account type!";
                    return null;
                  },
                ),

                // Service name
                TextFormField(
                  controller: _displayNameController,
                  decoration: InputDecoration(
                    labelText: "Displayname",
                    helperText: "if empty defaults to '${_selectedService?.name ?? "service"} - URL'",
                    helperStyle: TextStyle(overflow: TextOverflow.visible)
                  ),
                ),

                // Service url
                TextFormField(
                  controller: _urlController,
                  decoration: InputDecoration(
                    labelText: "Service Url",
                    hintText: "https://example.com",
                  ),
                  validator: (v) {
                    if (v?.isEmpty ?? true) return "URL missing!";
                    if (!v!.isURL) return "URL not valid!";
                    return null;
                  },
                ),

                // user name
                TextFormField(
                  controller: _usernameController,
                  decoration: InputDecoration(
                    labelText: "Username"
                  ),
                  validator: (v){
                    if (v?.isEmpty ?? true) return "Username missing!";
                    return null;
                  },
                ),

                DropdownButtonFormField(
                  items: LoginType.values.map((v) => DropdownMenuItem(value: v, child: Text(v.name))).toList(),
                  initialValue: _selectedLogin,
                  onChanged: (v) => setState(() => _selectedLogin = v),
                  decoration: InputDecoration(
                    labelText: "Select what login method to use"
                  ),
                ),

                // enter password
                if (_selectedLogin == LoginType.password)
                TextFormField(
                  obscureText: true,
                  enableSuggestions: false,
                  autocorrect: false,

                  controller: _passwordController,
                  decoration: InputDecoration(
                    helperText: createMode? null:"if empty current password wont be changed",
                    labelText: "Password",
                  ),
                )

              ],
            ),
          )
      ),
      actions: [
        TextButton(onPressed: () => Get.back(), child: Text("Cancel")),
        TextButton(
            onPressed: () async {
              Box<Account> box = Hive.box<Account>("accounts");
              // FlutterSecureStorage secureStorage = FlutterSecureStorage();
              final SharedPreferencesAsync prefs = SharedPreferencesAsync();

              if (createMode && _formKey.currentState!.validate()){
                if (_displayNameController.text.isEmpty) _displayNameController.text = "${_selectedService!.name} - ${Uri.parse(_urlController.text).host}";

                Account acc = Account(
                    id: Uuid().v1(),
                    type: _selectedService!,
                    loginType: _selectedLogin!,
                    baseUrl: _urlController.text,
                    displayName: _displayNameController.text,
                    username: _usernameController.text,
                );

                box.put(acc.id, acc);

                // await secureStorage.write(key: "${acc.id}.password", value: _passwordController.text);
                await prefs.setString("${acc.id}.password", _passwordController.text);

                Get.back();

              } else if(!createMode && _formKey.currentState!.validate()){
                Account acc = widget.account!;

                acc.type = _selectedService!;
                acc.loginType = _selectedLogin!;

                acc.baseUrl = _urlController.text;
                acc.displayName = _displayNameController.text;
                acc.username = _usernameController.text;

                box.put(acc.id, acc);

                if (_passwordController.text.isNotEmpty) {
                  // await secureStorage.write(key: "${acc.id}.password", value: _passwordController.text);
                  print(_passwordController.text);
                  await prefs.setString(acc.getStorageKey(KeyType.password), _passwordController.text);
                }

                Get.back();
              }
            },
            child: Text("Speichern")
        )
      ],
    );
  }
}
