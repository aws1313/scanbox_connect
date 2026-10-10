// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Account _$AccountFromJson(Map<String, dynamic> json) => _Account(
  id: json['id'] as String,
  type: $enumDecode(_$AccountTypeEnumMap, json['type']),
  loginType: $enumDecode(_$LoginTypeEnumMap, json['loginType']),
  baseUrl: json['baseUrl'] as String,
  displayName: json['displayName'] as String,
  username: json['username'] as String,
);

Map<String, dynamic> _$AccountToJson(_Account instance) => <String, dynamic>{
  'id': instance.id,
  'type': _$AccountTypeEnumMap[instance.type]!,
  'loginType': _$LoginTypeEnumMap[instance.loginType]!,
  'baseUrl': instance.baseUrl,
  'displayName': instance.displayName,
  'username': instance.username,
};

const _$AccountTypeEnumMap = {
  AccountType.homebox: 'Homebox',
  AccountType.jellyfin: 'Jellyfin',
};

const _$LoginTypeEnumMap = {
  LoginType.password: 'Password',
  LoginType.oidc: 'OpenID-Connect',
};
