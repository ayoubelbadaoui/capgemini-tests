import 'package:freezed_annotation/freezed_annotation.dart';
part 'search_failure.freezed.dart';

@freezed
abstract class SearchFailure with _$SearchFailure {
  const factory SearchFailure({String? errorMsg}) = _SearchFailure;
}
