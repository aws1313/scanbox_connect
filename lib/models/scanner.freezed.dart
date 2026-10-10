// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scanner.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ScannerCallbackData {

 bool get success; String? get code;
/// Create a copy of ScannerCallbackData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScannerCallbackDataCopyWith<ScannerCallbackData> get copyWith => _$ScannerCallbackDataCopyWithImpl<ScannerCallbackData>(this as ScannerCallbackData, _$identity);

  /// Serializes this ScannerCallbackData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScannerCallbackData&&(identical(other.success, success) || other.success == success)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,code);

@override
String toString() {
  return 'ScannerCallbackData(success: $success, code: $code)';
}


}

/// @nodoc
abstract mixin class $ScannerCallbackDataCopyWith<$Res>  {
  factory $ScannerCallbackDataCopyWith(ScannerCallbackData value, $Res Function(ScannerCallbackData) _then) = _$ScannerCallbackDataCopyWithImpl;
@useResult
$Res call({
 bool success, String? code
});




}
/// @nodoc
class _$ScannerCallbackDataCopyWithImpl<$Res>
    implements $ScannerCallbackDataCopyWith<$Res> {
  _$ScannerCallbackDataCopyWithImpl(this._self, this._then);

  final ScannerCallbackData _self;
  final $Res Function(ScannerCallbackData) _then;

/// Create a copy of ScannerCallbackData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? code = freezed,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ScannerCallbackData].
extension ScannerCallbackDataPatterns on ScannerCallbackData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ScannerCallbackData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ScannerCallbackData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ScannerCallbackData value)  $default,){
final _that = this;
switch (_that) {
case _ScannerCallbackData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ScannerCallbackData value)?  $default,){
final _that = this;
switch (_that) {
case _ScannerCallbackData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  String? code)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ScannerCallbackData() when $default != null:
return $default(_that.success,_that.code);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  String? code)  $default,) {final _that = this;
switch (_that) {
case _ScannerCallbackData():
return $default(_that.success,_that.code);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  String? code)?  $default,) {final _that = this;
switch (_that) {
case _ScannerCallbackData() when $default != null:
return $default(_that.success,_that.code);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ScannerCallbackData extends ScannerCallbackData {
   _ScannerCallbackData({required this.success, this.code}): super._();
  factory _ScannerCallbackData.fromJson(Map<String, dynamic> json) => _$ScannerCallbackDataFromJson(json);

@override final  bool success;
@override final  String? code;

/// Create a copy of ScannerCallbackData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ScannerCallbackDataCopyWith<_ScannerCallbackData> get copyWith => __$ScannerCallbackDataCopyWithImpl<_ScannerCallbackData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ScannerCallbackDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ScannerCallbackData&&(identical(other.success, success) || other.success == success)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,code);

@override
String toString() {
  return 'ScannerCallbackData(success: $success, code: $code)';
}


}

/// @nodoc
abstract mixin class _$ScannerCallbackDataCopyWith<$Res> implements $ScannerCallbackDataCopyWith<$Res> {
  factory _$ScannerCallbackDataCopyWith(_ScannerCallbackData value, $Res Function(_ScannerCallbackData) _then) = __$ScannerCallbackDataCopyWithImpl;
@override @useResult
$Res call({
 bool success, String? code
});




}
/// @nodoc
class __$ScannerCallbackDataCopyWithImpl<$Res>
    implements _$ScannerCallbackDataCopyWith<$Res> {
  __$ScannerCallbackDataCopyWithImpl(this._self, this._then);

  final _ScannerCallbackData _self;
  final $Res Function(_ScannerCallbackData) _then;

/// Create a copy of ScannerCallbackData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? code = freezed,}) {
  return _then(_ScannerCallbackData(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
