import 'package:freezed_annotation/freezed_annotation.dart';
part 'search_model.freezed.dart';
part 'search_model.g.dart';

@freezed
abstract class SearchModel with _$SearchModel {
  const factory SearchModel({
    required int resultCount,
    required List<Results> results,
  }) = _SearchModel;

  factory SearchModel.fromJson(Map<String, dynamic> json) =>
      _$SearchModelFromJson(json);
}

@freezed
abstract class Results with _$Results {
  const factory Results({
    required String artistName,
    required String artworkUrl100,
    required String? trackCensoredName,
  }) = _Results;

  factory Results.fromJson(Map<String, dynamic> json) =>
      _$ResultsFromJson(json);
}
