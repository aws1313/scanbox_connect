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

import 'package:freezed_annotation/freezed_annotation.dart';

part 'homebox.freezed.dart';
part 'homebox.g.dart';

@freezed
abstract class Entity with _$Entity {
  factory Entity({
    required String id,
    required bool archived,
    required EntityType entityType,
    required String createdAt,
    required String name,
    required String description,
    //required int quantity,
    List<Entity>? children,
  }) = _Entity;

  Entity._();

  factory Entity.fromJson(Map<String, dynamic> json) => _$EntityFromJson(json);
}

@freezed
abstract class EntityType with _$EntityType {
  factory EntityType({
    required String id,
    required String name,
    required String description,
    required bool isLocation,
    required String icon
  }) = _EntityType;

  EntityType._();

  factory EntityType.fromJson(Map<String, dynamic> json) => _$EntityTypeFromJson(json);
}

@freezed
abstract class EntityTag with _$EntityTag{
  factory EntityTag({
    required String id,
    required String name,
    required String description,

    List<EntityTag>? children,
    String? parentId,
  }) = _EntityTag;

  EntityTag._();

  factory EntityTag.fromJson(Map<String, dynamic> json) => _$EntityTagFromJson(json);
}

@freezed
abstract class QueryResponse with _$QueryResponse {
  factory QueryResponse({
    required int page,
    required int pageSize,
    required List<Entity> items
  }) = _QueryResponse;

  QueryResponse._();

  factory QueryResponse.fromJson(Map<String, dynamic> json) => _$QueryResponseFromJson(json);
}