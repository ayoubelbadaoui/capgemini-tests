// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SearchModel _$SearchModelFromJson(Map<String, dynamic> json) {
  return _SearchModel.fromJson(json);
}

/// @nodoc
mixin _$SearchModel {
  int get resultCount => throw _privateConstructorUsedError;
  List<Results> get results => throw _privateConstructorUsedError;

  /// Serializes this SearchModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SearchModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchModelCopyWith<SearchModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchModelCopyWith<$Res> {
  factory $SearchModelCopyWith(
    SearchModel value,
    $Res Function(SearchModel) then,
  ) = _$SearchModelCopyWithImpl<$Res, SearchModel>;
  @useResult
  $Res call({int resultCount, List<Results> results});
}

/// @nodoc
class _$SearchModelCopyWithImpl<$Res, $Val extends SearchModel>
    implements $SearchModelCopyWith<$Res> {
  _$SearchModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? resultCount = null, Object? results = null}) {
    return _then(
      _value.copyWith(
            resultCount:
                null == resultCount
                    ? _value.resultCount
                    : resultCount // ignore: cast_nullable_to_non_nullable
                        as int,
            results:
                null == results
                    ? _value.results
                    : results // ignore: cast_nullable_to_non_nullable
                        as List<Results>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SearchModelImplCopyWith<$Res>
    implements $SearchModelCopyWith<$Res> {
  factory _$$SearchModelImplCopyWith(
    _$SearchModelImpl value,
    $Res Function(_$SearchModelImpl) then,
  ) = __$$SearchModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int resultCount, List<Results> results});
}

/// @nodoc
class __$$SearchModelImplCopyWithImpl<$Res>
    extends _$SearchModelCopyWithImpl<$Res, _$SearchModelImpl>
    implements _$$SearchModelImplCopyWith<$Res> {
  __$$SearchModelImplCopyWithImpl(
    _$SearchModelImpl _value,
    $Res Function(_$SearchModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SearchModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? resultCount = null, Object? results = null}) {
    return _then(
      _$SearchModelImpl(
        resultCount:
            null == resultCount
                ? _value.resultCount
                : resultCount // ignore: cast_nullable_to_non_nullable
                    as int,
        results:
            null == results
                ? _value._results
                : results // ignore: cast_nullable_to_non_nullable
                    as List<Results>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchModelImpl implements _SearchModel {
  const _$SearchModelImpl({
    required this.resultCount,
    required final List<Results> results,
  }) : _results = results;

  factory _$SearchModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchModelImplFromJson(json);

  @override
  final int resultCount;
  final List<Results> _results;
  @override
  List<Results> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'SearchModel(resultCount: $resultCount, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchModelImpl &&
            (identical(other.resultCount, resultCount) ||
                other.resultCount == resultCount) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    resultCount,
    const DeepCollectionEquality().hash(_results),
  );

  /// Create a copy of SearchModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchModelImplCopyWith<_$SearchModelImpl> get copyWith =>
      __$$SearchModelImplCopyWithImpl<_$SearchModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchModelImplToJson(this);
  }
}

abstract class _SearchModel implements SearchModel {
  const factory _SearchModel({
    required final int resultCount,
    required final List<Results> results,
  }) = _$SearchModelImpl;

  factory _SearchModel.fromJson(Map<String, dynamic> json) =
      _$SearchModelImpl.fromJson;

  @override
  int get resultCount;
  @override
  List<Results> get results;

  /// Create a copy of SearchModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchModelImplCopyWith<_$SearchModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Results _$ResultsFromJson(Map<String, dynamic> json) {
  return _Results.fromJson(json);
}

/// @nodoc
mixin _$Results {
  String get artistName => throw _privateConstructorUsedError;
  String get artworkUrl100 => throw _privateConstructorUsedError;
  String? get trackCensoredName => throw _privateConstructorUsedError;

  /// Serializes this Results to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Results
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResultsCopyWith<Results> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultsCopyWith<$Res> {
  factory $ResultsCopyWith(Results value, $Res Function(Results) then) =
      _$ResultsCopyWithImpl<$Res, Results>;
  @useResult
  $Res call({
    String artistName,
    String artworkUrl100,
    String? trackCensoredName,
  });
}

/// @nodoc
class _$ResultsCopyWithImpl<$Res, $Val extends Results>
    implements $ResultsCopyWith<$Res> {
  _$ResultsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Results
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artistName = null,
    Object? artworkUrl100 = null,
    Object? trackCensoredName = freezed,
  }) {
    return _then(
      _value.copyWith(
            artistName:
                null == artistName
                    ? _value.artistName
                    : artistName // ignore: cast_nullable_to_non_nullable
                        as String,
            artworkUrl100:
                null == artworkUrl100
                    ? _value.artworkUrl100
                    : artworkUrl100 // ignore: cast_nullable_to_non_nullable
                        as String,
            trackCensoredName:
                freezed == trackCensoredName
                    ? _value.trackCensoredName
                    : trackCensoredName // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ResultsImplCopyWith<$Res> implements $ResultsCopyWith<$Res> {
  factory _$$ResultsImplCopyWith(
    _$ResultsImpl value,
    $Res Function(_$ResultsImpl) then,
  ) = __$$ResultsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String artistName,
    String artworkUrl100,
    String? trackCensoredName,
  });
}

/// @nodoc
class __$$ResultsImplCopyWithImpl<$Res>
    extends _$ResultsCopyWithImpl<$Res, _$ResultsImpl>
    implements _$$ResultsImplCopyWith<$Res> {
  __$$ResultsImplCopyWithImpl(
    _$ResultsImpl _value,
    $Res Function(_$ResultsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Results
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artistName = null,
    Object? artworkUrl100 = null,
    Object? trackCensoredName = freezed,
  }) {
    return _then(
      _$ResultsImpl(
        artistName:
            null == artistName
                ? _value.artistName
                : artistName // ignore: cast_nullable_to_non_nullable
                    as String,
        artworkUrl100:
            null == artworkUrl100
                ? _value.artworkUrl100
                : artworkUrl100 // ignore: cast_nullable_to_non_nullable
                    as String,
        trackCensoredName:
            freezed == trackCensoredName
                ? _value.trackCensoredName
                : trackCensoredName // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultsImpl implements _Results {
  const _$ResultsImpl({
    required this.artistName,
    required this.artworkUrl100,
    required this.trackCensoredName,
  });

  factory _$ResultsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultsImplFromJson(json);

  @override
  final String artistName;
  @override
  final String artworkUrl100;
  @override
  final String? trackCensoredName;

  @override
  String toString() {
    return 'Results(artistName: $artistName, artworkUrl100: $artworkUrl100, trackCensoredName: $trackCensoredName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultsImpl &&
            (identical(other.artistName, artistName) ||
                other.artistName == artistName) &&
            (identical(other.artworkUrl100, artworkUrl100) ||
                other.artworkUrl100 == artworkUrl100) &&
            (identical(other.trackCensoredName, trackCensoredName) ||
                other.trackCensoredName == trackCensoredName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, artistName, artworkUrl100, trackCensoredName);

  /// Create a copy of Results
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultsImplCopyWith<_$ResultsImpl> get copyWith =>
      __$$ResultsImplCopyWithImpl<_$ResultsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultsImplToJson(this);
  }
}

abstract class _Results implements Results {
  const factory _Results({
    required final String artistName,
    required final String artworkUrl100,
    required final String? trackCensoredName,
  }) = _$ResultsImpl;

  factory _Results.fromJson(Map<String, dynamic> json) = _$ResultsImpl.fromJson;

  @override
  String get artistName;
  @override
  String get artworkUrl100;
  @override
  String? get trackCensoredName;

  /// Create a copy of Results
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResultsImplCopyWith<_$ResultsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
