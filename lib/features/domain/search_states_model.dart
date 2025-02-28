import 'package:cap_test/features/domain/search_failure.dart';
import 'package:cap_test/features/domain/search_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'search_states_model.freezed.dart';

@freezed
class SearchStates with _$SearchStates {
  const factory SearchStates.initial() = _Initial;
  const factory SearchStates.failure(SearchFailure failure) = _Failure;
  const factory SearchStates.loaded(SearchModel results) = _Loaded;
  const factory SearchStates.empty() = _Empty;
  const factory SearchStates.loading() = _Loading;
}
