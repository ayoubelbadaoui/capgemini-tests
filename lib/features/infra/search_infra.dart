import 'dart:convert';
import 'dart:developer';

import 'package:cap_test/core/api/dio.dart';
import 'package:cap_test/core/constants/api_end_pints.dart';
import 'package:cap_test/features/domain/search_failure.dart';
import 'package:cap_test/features/domain/search_model.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

typedef SearchResOrFailure = Either<SearchFailure, SearchModel>;

class SearchInfra {
  final ApiEndPoints _apiEndPoints;
  SearchInfra(this._apiCLient, this._apiEndPoints);
  final ApiCLient _apiCLient;
  Future<SearchResOrFailure> getResults(String term) async {
    try {
      final resultsRes = await _apiCLient.dioInstance.get(
        _apiEndPoints.search,
        queryParameters: {"term": term},
      );

      if (resultsRes.statusCode == 200) {
        log("Response type: ${resultsRes.data.runtimeType}");
        log("Response data: ${resultsRes.data}");

        final decodedJson = jsonDecode(resultsRes.data) as Map<String, dynamic>;
        return right(SearchModel.fromJson(decodedJson));
      }
      return left(
        SearchFailure(
          errorMsg: "Server returned error${resultsRes.statusCode} ",
        ),
      );
    } on DioException catch (e) {
      return left(SearchFailure(errorMsg: e.message ?? "Something went wrong"));
    }
  }
}
