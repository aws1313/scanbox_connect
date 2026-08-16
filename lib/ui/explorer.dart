import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_ce/hive.dart';
import 'package:hive_ce_flutter/adapters.dart';
import 'package:scanbox_connect/api/homebox.dart';

import 'package:scanbox_connect/models/account.dart';
import 'package:scanbox_connect/models/homebox.dart';

class ExplorerPage extends StatefulWidget {
  const ExplorerPage({super.key});

  @override
  State<ExplorerPage> createState() => _ExplorerPageState();
}

class _ExplorerPageState extends State<ExplorerPage> {
  Box<Account> accountBox = Hive.box<Account>("accounts");
  late final ValueListenable<Box<Account>> _listenable;

  final _breadcrumbsScrollController = ScrollController();

  Map<AccountType, Account?> favoriteAcc = {};
  Account? hbAcc;
  HomeboxApi? hbApi;

  RxList<Entity> path = <Entity>[].obs;

  void handleAccountUpdate(){
    for (AccountType a in AccountType.values){
      favoriteAcc[a] = accountBox.values.firstWhereOrNull((e) => e.type == a );
    }
    hbAcc = favoriteAcc[AccountType.homebox];

    if (hbAcc != null){
      hbApi = HomeboxApi.getByAccount(hbAcc!);
    }
    setState(() {});
  }

  @override
  void initState() {
    handleAccountUpdate();

    _listenable = accountBox.listenable();
    _listenable.addListener(handleAccountUpdate);

    super.initState();
  }

  @override
  void dispose() {
    _listenable.removeListener(handleAccountUpdate);
    super.dispose();
  }

  Future<(QueryResponse, QueryResponse?)> queryFuture(){
    if (path.isEmpty){
      return (
        hbApi!.queryEntities(filterChildren: true, isLocation: true),
        Future.value(null)
      ).wait;
    } else {
      print(path.last.name);
      return (
        hbApi!.queryEntities(parentIds: [path.last.id], isLocation: true),
        hbApi!.queryEntities(parentIds: [path.last.id], isLocation: false)
      ).wait;
    }
  }

  @override
  Widget build(BuildContext context) {
    if (hbAcc != null){
      return FutureBuilder(
          future: queryFuture(),
          builder: (context, AsyncSnapshot<(QueryResponse, QueryResponse?)> resp){
            if (resp.connectionState == ConnectionState.waiting) return Center(child: CircularProgressIndicator(),);
            if (resp.hasData) {
              List<Entity> locations = resp.data!.$1.items;
              List<Entity> items = resp.data!.$2?.items??[];
              
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Wrap(
                      children: [
                        TextButton(onPressed: ()=>setState(() => path.clear()), child: Text("/")),
                        ...path.map((v) => Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.chevron_right),
                            TextButton(
                                onPressed: ()=>setState(() => path.removeRange(path.indexOf(v) + 1, path.length)),
                                child: Text(v.name)
                            )
                          ],
                        ))
                      ]
                    ),
                  Expanded(
                    child: CustomScrollView(
                      slivers: [
                        SliverGrid(
                          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 130,
                          ),
                          delegate: SliverChildListDelegate(
                              ((path.isNotEmpty)?[
                                GestureDetector(
                                  onTap: () => setState(() => path.removeLast()),
                                  key: ValueKey("back_button"),
                                  child: Card(child: Icon(Icons.arrow_back),),
                                )
                              ]:<Widget>[]) + locations.map((Entity e) => GestureDetector(
                                onTap: () => setState(() => path.add(e)),
                                key: ValueKey(e.id),
                                child: Card(
                                  child: Padding(
                                      padding: EdgeInsetsGeometry.fromLTRB(5, 10, 5, 5),
                                      child: Column(
                                        spacing: 5,
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Icon(Icons.folder, size: 35,),
                                          Expanded(child: Text(
                                            e.name,
                                            textAlign: TextAlign.center,
                                          ))
                                        ],
                                        )
                                  ),
                                ),
                            )).toList()
                          )
                        ),

                        if (items.isNotEmpty)
                        SliverGrid(
                          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 130),
                          delegate: SliverChildBuilderDelegate(
                            childCount: items.length,
                            (BuildContext context, int i) {
                              final Entity e = items[i];
                              return GestureDetector(
                                key: ValueKey(e.id),
                                child: Card(
                                  child: Text(e.name),
                                ),
                              );
                            }
                          ),
                        )
                      ],
                    )
                  )
                ],
              );

            }
            if (resp.hasError){
              debugPrint('Error: ${resp.error}');
              debugPrint('Stack trace: ${resp.stackTrace}');
              return Center(child: Text(resp.error.toString()),);
            }


            return Center(child: CircularProgressIndicator(),);
          }
      );
    }

    return Center(child: Text("No accounts yet"),);
  }
}
