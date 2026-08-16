// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'homebox.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Entity {

 String get id; bool get archived; EntityType get entityType; String get createdAt; String get name; String get description;//required int quantity,
 List<Entity>? get children;
/// Create a copy of Entity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EntityCopyWith<Entity> get copyWith => _$EntityCopyWithImpl<Entity>(this as Entity, _$identity);

  /// Serializes this Entity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Entity&&(identical(other.id, id) || other.id == id)&&(identical(other.archived, archived) || other.archived == archived)&&(identical(other.entityType, entityType) || other.entityType == entityType)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.children, children));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,archived,entityType,createdAt,name,description,const DeepCollectionEquality().hash(children));

@override
String toString() {
  return 'Entity(id: $id, archived: $archived, entityType: $entityType, createdAt: $createdAt, name: $name, description: $description, children: $children)';
}


}

/// @nodoc
abstract mixin class $EntityCopyWith<$Res>  {
  factory $EntityCopyWith(Entity value, $Res Function(Entity) _then) = _$EntityCopyWithImpl;
@useResult
$Res call({
 String id, bool archived, EntityType entityType, String createdAt, String name, String description, List<Entity>? children
});


$EntityTypeCopyWith<$Res> get entityType;

}
/// @nodoc
class _$EntityCopyWithImpl<$Res>
    implements $EntityCopyWith<$Res> {
  _$EntityCopyWithImpl(this._self, this._then);

  final Entity _self;
  final $Res Function(Entity) _then;

/// Create a copy of Entity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? archived = null,Object? entityType = null,Object? createdAt = null,Object? name = null,Object? description = null,Object? children = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,archived: null == archived ? _self.archived : archived // ignore: cast_nullable_to_non_nullable
as bool,entityType: null == entityType ? _self.entityType : entityType // ignore: cast_nullable_to_non_nullable
as EntityType,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,children: freezed == children ? _self.children : children // ignore: cast_nullable_to_non_nullable
as List<Entity>?,
  ));
}
/// Create a copy of Entity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EntityTypeCopyWith<$Res> get entityType {
  
  return $EntityTypeCopyWith<$Res>(_self.entityType, (value) {
    return _then(_self.copyWith(entityType: value));
  });
}
}


/// Adds pattern-matching-related methods to [Entity].
extension EntityPatterns on Entity {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Entity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Entity() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Entity value)  $default,){
final _that = this;
switch (_that) {
case _Entity():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Entity value)?  $default,){
final _that = this;
switch (_that) {
case _Entity() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  bool archived,  EntityType entityType,  String createdAt,  String name,  String description,  List<Entity>? children)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Entity() when $default != null:
return $default(_that.id,_that.archived,_that.entityType,_that.createdAt,_that.name,_that.description,_that.children);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  bool archived,  EntityType entityType,  String createdAt,  String name,  String description,  List<Entity>? children)  $default,) {final _that = this;
switch (_that) {
case _Entity():
return $default(_that.id,_that.archived,_that.entityType,_that.createdAt,_that.name,_that.description,_that.children);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  bool archived,  EntityType entityType,  String createdAt,  String name,  String description,  List<Entity>? children)?  $default,) {final _that = this;
switch (_that) {
case _Entity() when $default != null:
return $default(_that.id,_that.archived,_that.entityType,_that.createdAt,_that.name,_that.description,_that.children);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Entity extends Entity {
   _Entity({required this.id, required this.archived, required this.entityType, required this.createdAt, required this.name, required this.description, final  List<Entity>? children}): _children = children,super._();
  factory _Entity.fromJson(Map<String, dynamic> json) => _$EntityFromJson(json);

@override final  String id;
@override final  bool archived;
@override final  EntityType entityType;
@override final  String createdAt;
@override final  String name;
@override final  String description;
//required int quantity,
 final  List<Entity>? _children;
//required int quantity,
@override List<Entity>? get children {
  final value = _children;
  if (value == null) return null;
  if (_children is EqualUnmodifiableListView) return _children;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of Entity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EntityCopyWith<_Entity> get copyWith => __$EntityCopyWithImpl<_Entity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Entity&&(identical(other.id, id) || other.id == id)&&(identical(other.archived, archived) || other.archived == archived)&&(identical(other.entityType, entityType) || other.entityType == entityType)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._children, _children));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,archived,entityType,createdAt,name,description,const DeepCollectionEquality().hash(_children));

@override
String toString() {
  return 'Entity(id: $id, archived: $archived, entityType: $entityType, createdAt: $createdAt, name: $name, description: $description, children: $children)';
}


}

/// @nodoc
abstract mixin class _$EntityCopyWith<$Res> implements $EntityCopyWith<$Res> {
  factory _$EntityCopyWith(_Entity value, $Res Function(_Entity) _then) = __$EntityCopyWithImpl;
@override @useResult
$Res call({
 String id, bool archived, EntityType entityType, String createdAt, String name, String description, List<Entity>? children
});


@override $EntityTypeCopyWith<$Res> get entityType;

}
/// @nodoc
class __$EntityCopyWithImpl<$Res>
    implements _$EntityCopyWith<$Res> {
  __$EntityCopyWithImpl(this._self, this._then);

  final _Entity _self;
  final $Res Function(_Entity) _then;

/// Create a copy of Entity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? archived = null,Object? entityType = null,Object? createdAt = null,Object? name = null,Object? description = null,Object? children = freezed,}) {
  return _then(_Entity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,archived: null == archived ? _self.archived : archived // ignore: cast_nullable_to_non_nullable
as bool,entityType: null == entityType ? _self.entityType : entityType // ignore: cast_nullable_to_non_nullable
as EntityType,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,children: freezed == children ? _self._children : children // ignore: cast_nullable_to_non_nullable
as List<Entity>?,
  ));
}

/// Create a copy of Entity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EntityTypeCopyWith<$Res> get entityType {
  
  return $EntityTypeCopyWith<$Res>(_self.entityType, (value) {
    return _then(_self.copyWith(entityType: value));
  });
}
}


/// @nodoc
mixin _$EntityType {

 String get id; String get name; String get description; bool get isLocation; String get icon;
/// Create a copy of EntityType
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EntityTypeCopyWith<EntityType> get copyWith => _$EntityTypeCopyWithImpl<EntityType>(this as EntityType, _$identity);

  /// Serializes this EntityType to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EntityType&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.isLocation, isLocation) || other.isLocation == isLocation)&&(identical(other.icon, icon) || other.icon == icon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,isLocation,icon);

@override
String toString() {
  return 'EntityType(id: $id, name: $name, description: $description, isLocation: $isLocation, icon: $icon)';
}


}

/// @nodoc
abstract mixin class $EntityTypeCopyWith<$Res>  {
  factory $EntityTypeCopyWith(EntityType value, $Res Function(EntityType) _then) = _$EntityTypeCopyWithImpl;
@useResult
$Res call({
 String id, String name, String description, bool isLocation, String icon
});




}
/// @nodoc
class _$EntityTypeCopyWithImpl<$Res>
    implements $EntityTypeCopyWith<$Res> {
  _$EntityTypeCopyWithImpl(this._self, this._then);

  final EntityType _self;
  final $Res Function(EntityType) _then;

/// Create a copy of EntityType
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? description = null,Object? isLocation = null,Object? icon = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,isLocation: null == isLocation ? _self.isLocation : isLocation // ignore: cast_nullable_to_non_nullable
as bool,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [EntityType].
extension EntityTypePatterns on EntityType {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EntityType value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EntityType() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EntityType value)  $default,){
final _that = this;
switch (_that) {
case _EntityType():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EntityType value)?  $default,){
final _that = this;
switch (_that) {
case _EntityType() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String description,  bool isLocation,  String icon)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EntityType() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.isLocation,_that.icon);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String description,  bool isLocation,  String icon)  $default,) {final _that = this;
switch (_that) {
case _EntityType():
return $default(_that.id,_that.name,_that.description,_that.isLocation,_that.icon);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String description,  bool isLocation,  String icon)?  $default,) {final _that = this;
switch (_that) {
case _EntityType() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.isLocation,_that.icon);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EntityType extends EntityType {
   _EntityType({required this.id, required this.name, required this.description, required this.isLocation, required this.icon}): super._();
  factory _EntityType.fromJson(Map<String, dynamic> json) => _$EntityTypeFromJson(json);

@override final  String id;
@override final  String name;
@override final  String description;
@override final  bool isLocation;
@override final  String icon;

/// Create a copy of EntityType
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EntityTypeCopyWith<_EntityType> get copyWith => __$EntityTypeCopyWithImpl<_EntityType>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EntityTypeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EntityType&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.isLocation, isLocation) || other.isLocation == isLocation)&&(identical(other.icon, icon) || other.icon == icon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,isLocation,icon);

@override
String toString() {
  return 'EntityType(id: $id, name: $name, description: $description, isLocation: $isLocation, icon: $icon)';
}


}

/// @nodoc
abstract mixin class _$EntityTypeCopyWith<$Res> implements $EntityTypeCopyWith<$Res> {
  factory _$EntityTypeCopyWith(_EntityType value, $Res Function(_EntityType) _then) = __$EntityTypeCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String description, bool isLocation, String icon
});




}
/// @nodoc
class __$EntityTypeCopyWithImpl<$Res>
    implements _$EntityTypeCopyWith<$Res> {
  __$EntityTypeCopyWithImpl(this._self, this._then);

  final _EntityType _self;
  final $Res Function(_EntityType) _then;

/// Create a copy of EntityType
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? description = null,Object? isLocation = null,Object? icon = null,}) {
  return _then(_EntityType(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,isLocation: null == isLocation ? _self.isLocation : isLocation // ignore: cast_nullable_to_non_nullable
as bool,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$EntityTag {

 String get id; String get name; String get description; List<EntityTag>? get children; String? get parentId;
/// Create a copy of EntityTag
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EntityTagCopyWith<EntityTag> get copyWith => _$EntityTagCopyWithImpl<EntityTag>(this as EntityTag, _$identity);

  /// Serializes this EntityTag to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EntityTag&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.children, children)&&(identical(other.parentId, parentId) || other.parentId == parentId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,const DeepCollectionEquality().hash(children),parentId);

@override
String toString() {
  return 'EntityTag(id: $id, name: $name, description: $description, children: $children, parentId: $parentId)';
}


}

/// @nodoc
abstract mixin class $EntityTagCopyWith<$Res>  {
  factory $EntityTagCopyWith(EntityTag value, $Res Function(EntityTag) _then) = _$EntityTagCopyWithImpl;
@useResult
$Res call({
 String id, String name, String description, List<EntityTag>? children, String? parentId
});




}
/// @nodoc
class _$EntityTagCopyWithImpl<$Res>
    implements $EntityTagCopyWith<$Res> {
  _$EntityTagCopyWithImpl(this._self, this._then);

  final EntityTag _self;
  final $Res Function(EntityTag) _then;

/// Create a copy of EntityTag
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? description = null,Object? children = freezed,Object? parentId = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,children: freezed == children ? _self.children : children // ignore: cast_nullable_to_non_nullable
as List<EntityTag>?,parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [EntityTag].
extension EntityTagPatterns on EntityTag {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EntityTag value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EntityTag() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EntityTag value)  $default,){
final _that = this;
switch (_that) {
case _EntityTag():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EntityTag value)?  $default,){
final _that = this;
switch (_that) {
case _EntityTag() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String description,  List<EntityTag>? children,  String? parentId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EntityTag() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.children,_that.parentId);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String description,  List<EntityTag>? children,  String? parentId)  $default,) {final _that = this;
switch (_that) {
case _EntityTag():
return $default(_that.id,_that.name,_that.description,_that.children,_that.parentId);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String description,  List<EntityTag>? children,  String? parentId)?  $default,) {final _that = this;
switch (_that) {
case _EntityTag() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.children,_that.parentId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EntityTag extends EntityTag {
   _EntityTag({required this.id, required this.name, required this.description, final  List<EntityTag>? children, this.parentId}): _children = children,super._();
  factory _EntityTag.fromJson(Map<String, dynamic> json) => _$EntityTagFromJson(json);

@override final  String id;
@override final  String name;
@override final  String description;
 final  List<EntityTag>? _children;
@override List<EntityTag>? get children {
  final value = _children;
  if (value == null) return null;
  if (_children is EqualUnmodifiableListView) return _children;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? parentId;

/// Create a copy of EntityTag
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EntityTagCopyWith<_EntityTag> get copyWith => __$EntityTagCopyWithImpl<_EntityTag>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EntityTagToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EntityTag&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._children, _children)&&(identical(other.parentId, parentId) || other.parentId == parentId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,const DeepCollectionEquality().hash(_children),parentId);

@override
String toString() {
  return 'EntityTag(id: $id, name: $name, description: $description, children: $children, parentId: $parentId)';
}


}

/// @nodoc
abstract mixin class _$EntityTagCopyWith<$Res> implements $EntityTagCopyWith<$Res> {
  factory _$EntityTagCopyWith(_EntityTag value, $Res Function(_EntityTag) _then) = __$EntityTagCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String description, List<EntityTag>? children, String? parentId
});




}
/// @nodoc
class __$EntityTagCopyWithImpl<$Res>
    implements _$EntityTagCopyWith<$Res> {
  __$EntityTagCopyWithImpl(this._self, this._then);

  final _EntityTag _self;
  final $Res Function(_EntityTag) _then;

/// Create a copy of EntityTag
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? description = null,Object? children = freezed,Object? parentId = freezed,}) {
  return _then(_EntityTag(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,children: freezed == children ? _self._children : children // ignore: cast_nullable_to_non_nullable
as List<EntityTag>?,parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$QueryResponse {

 int get page; int get pageSize; List<Entity> get items;
/// Create a copy of QueryResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QueryResponseCopyWith<QueryResponse> get copyWith => _$QueryResponseCopyWithImpl<QueryResponse>(this as QueryResponse, _$identity);

  /// Serializes this QueryResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QueryResponse&&(identical(other.page, page) || other.page == page)&&(identical(other.pageSize, pageSize) || other.pageSize == pageSize)&&const DeepCollectionEquality().equals(other.items, items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,pageSize,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'QueryResponse(page: $page, pageSize: $pageSize, items: $items)';
}


}

/// @nodoc
abstract mixin class $QueryResponseCopyWith<$Res>  {
  factory $QueryResponseCopyWith(QueryResponse value, $Res Function(QueryResponse) _then) = _$QueryResponseCopyWithImpl;
@useResult
$Res call({
 int page, int pageSize, List<Entity> items
});




}
/// @nodoc
class _$QueryResponseCopyWithImpl<$Res>
    implements $QueryResponseCopyWith<$Res> {
  _$QueryResponseCopyWithImpl(this._self, this._then);

  final QueryResponse _self;
  final $Res Function(QueryResponse) _then;

/// Create a copy of QueryResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? page = null,Object? pageSize = null,Object? items = null,}) {
  return _then(_self.copyWith(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,pageSize: null == pageSize ? _self.pageSize : pageSize // ignore: cast_nullable_to_non_nullable
as int,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<Entity>,
  ));
}

}


/// Adds pattern-matching-related methods to [QueryResponse].
extension QueryResponsePatterns on QueryResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QueryResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QueryResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QueryResponse value)  $default,){
final _that = this;
switch (_that) {
case _QueryResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QueryResponse value)?  $default,){
final _that = this;
switch (_that) {
case _QueryResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int page,  int pageSize,  List<Entity> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QueryResponse() when $default != null:
return $default(_that.page,_that.pageSize,_that.items);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int page,  int pageSize,  List<Entity> items)  $default,) {final _that = this;
switch (_that) {
case _QueryResponse():
return $default(_that.page,_that.pageSize,_that.items);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int page,  int pageSize,  List<Entity> items)?  $default,) {final _that = this;
switch (_that) {
case _QueryResponse() when $default != null:
return $default(_that.page,_that.pageSize,_that.items);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _QueryResponse extends QueryResponse {
   _QueryResponse({required this.page, required this.pageSize, required final  List<Entity> items}): _items = items,super._();
  factory _QueryResponse.fromJson(Map<String, dynamic> json) => _$QueryResponseFromJson(json);

@override final  int page;
@override final  int pageSize;
 final  List<Entity> _items;
@override List<Entity> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of QueryResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QueryResponseCopyWith<_QueryResponse> get copyWith => __$QueryResponseCopyWithImpl<_QueryResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QueryResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QueryResponse&&(identical(other.page, page) || other.page == page)&&(identical(other.pageSize, pageSize) || other.pageSize == pageSize)&&const DeepCollectionEquality().equals(other._items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,pageSize,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'QueryResponse(page: $page, pageSize: $pageSize, items: $items)';
}


}

/// @nodoc
abstract mixin class _$QueryResponseCopyWith<$Res> implements $QueryResponseCopyWith<$Res> {
  factory _$QueryResponseCopyWith(_QueryResponse value, $Res Function(_QueryResponse) _then) = __$QueryResponseCopyWithImpl;
@override @useResult
$Res call({
 int page, int pageSize, List<Entity> items
});




}
/// @nodoc
class __$QueryResponseCopyWithImpl<$Res>
    implements _$QueryResponseCopyWith<$Res> {
  __$QueryResponseCopyWithImpl(this._self, this._then);

  final _QueryResponse _self;
  final $Res Function(_QueryResponse) _then;

/// Create a copy of QueryResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? page = null,Object? pageSize = null,Object? items = null,}) {
  return _then(_QueryResponse(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,pageSize: null == pageSize ? _self.pageSize : pageSize // ignore: cast_nullable_to_non_nullable
as int,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<Entity>,
  ));
}


}

// dart format on
