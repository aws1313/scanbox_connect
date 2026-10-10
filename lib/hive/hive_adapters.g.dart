// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_adapters.dart';

// **************************************************************************
// AdaptersGenerator
// **************************************************************************

class AccountTypeAdapter extends TypeAdapter<AccountType> {
  @override
  final typeId = 0;

  @override
  AccountType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return AccountType.homebox;
      case 1:
        return AccountType.jellyfin;
      default:
        return AccountType.homebox;
    }
  }

  @override
  void write(BinaryWriter writer, AccountType obj) {
    switch (obj) {
      case AccountType.homebox:
        writer.writeByte(0);
      case AccountType.jellyfin:
        writer.writeByte(1);
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AccountTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class LoginTypeAdapter extends TypeAdapter<LoginType> {
  @override
  final typeId = 1;

  @override
  LoginType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return LoginType.oidc;
      case 1:
        return LoginType.password;
      default:
        return LoginType.oidc;
    }
  }

  @override
  void write(BinaryWriter writer, LoginType obj) {
    switch (obj) {
      case LoginType.oidc:
        writer.writeByte(0);
      case LoginType.password:
        writer.writeByte(1);
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LoginTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class AccountAdapter extends TypeAdapter<Account> {
  @override
  final typeId = 2;

  @override
  Account read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Account(
      id: fields[0] as String,
      type: fields[1] as AccountType,
      loginType: fields[2] as LoginType,
      baseUrl: fields[3] as String,
      displayName: fields[4] as String,
      username: fields[5] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Account obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.type)
      ..writeByte(2)
      ..write(obj.loginType)
      ..writeByte(3)
      ..write(obj.baseUrl)
      ..writeByte(4)
      ..write(obj.displayName)
      ..writeByte(5)
      ..write(obj.username);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AccountAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
