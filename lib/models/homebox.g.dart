// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'homebox.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Entity _$EntityFromJson(Map<String, dynamic> json) => _Entity(
  id: json['id'] as String,
  archived: json['archived'] as bool,
  entityType: EntityType.fromJson(json['entityType'] as Map<String, dynamic>),
  createdAt: json['createdAt'] as String,
  name: json['name'] as String,
  description: json['description'] as String,
  children: (json['children'] as List<dynamic>?)
      ?.map((e) => Entity.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$EntityToJson(_Entity instance) => <String, dynamic>{
  'id': instance.id,
  'archived': instance.archived,
  'entityType': instance.entityType,
  'createdAt': instance.createdAt,
  'name': instance.name,
  'description': instance.description,
  'children': instance.children,
};

_EntityType _$EntityTypeFromJson(Map<String, dynamic> json) => _EntityType(
  id: json['id'] as String,
  name: json['name'] as String,
  description: json['description'] as String,
  isLocation: json['isLocation'] as bool,
  icon: json['icon'] as String,
);

Map<String, dynamic> _$EntityTypeToJson(_EntityType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'isLocation': instance.isLocation,
      'icon': instance.icon,
    };

_EntityTag _$EntityTagFromJson(Map<String, dynamic> json) => _EntityTag(
  id: json['id'] as String,
  name: json['name'] as String,
  description: json['description'] as String,
  children: (json['children'] as List<dynamic>?)
      ?.map((e) => EntityTag.fromJson(e as Map<String, dynamic>))
      .toList(),
  parentId: json['parentId'] as String?,
);

Map<String, dynamic> _$EntityTagToJson(_EntityTag instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'children': instance.children,
      'parentId': instance.parentId,
    };

_QueryResponse _$QueryResponseFromJson(Map<String, dynamic> json) =>
    _QueryResponse(
      page: (json['page'] as num).toInt(),
      pageSize: (json['pageSize'] as num).toInt(),
      items: (json['items'] as List<dynamic>)
          .map((e) => Entity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$QueryResponseToJson(_QueryResponse instance) =>
    <String, dynamic>{
      'page': instance.page,
      'pageSize': instance.pageSize,
      'items': instance.items,
    };
