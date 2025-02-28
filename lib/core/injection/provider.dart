import 'package:cap_test/core/api/dio.dart';
import 'package:cap_test/core/constants/api_end_pints.dart';
import 'package:cap_test/features/application/search_notifier.dart';
import 'package:cap_test/features/domain/search_states_model.dart';
import 'package:cap_test/features/infra/search_infra.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';

final dioProvider = Provider<Dio>((ref) {
  return Dio();
});

final baseUrl = Provider<String>((ref) {
  return "https://itunes.apple.com/";
});

final apiClientProvider = Provider<ApiCLient>((ref) {
  return ApiCLient(ref.watch(baseUrl), ref.watch(dioProvider));
});

final apiEndPointsProvider = Provider<ApiEndPoints>((ref) {
  return ApiEndPoints();
});

final searchInfraProvider = Provider<SearchInfra>((ref) {
  return SearchInfra(
    ref.read(apiClientProvider),
    ref.read(apiEndPointsProvider),
  );
});

final searchNotifierProvider =
    StateNotifierProvider<SearchNotifier, SearchStates>(
      (ref) => SearchNotifier(ref.watch(searchInfraProvider)),
    );
