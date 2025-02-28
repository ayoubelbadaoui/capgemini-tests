import 'package:cap_test/features/domain/search_failure.dart';
import 'package:cap_test/features/domain/search_states_model.dart';
import 'package:cap_test/features/infra/search_infra.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchNotifier extends StateNotifier<SearchStates> {
  SearchNotifier(this._searchInfra) : super(SearchStates.initial());

  final SearchInfra _searchInfra;

  Future<void> search(String term) async {
    state = SearchStates.loading();
    final resultsOrFailure = await _searchInfra.getResults(term);
    resultsOrFailure.fold(
      (l) {
        state = SearchStates.failure(l);
      },
      (r) {
        if (r.results.isNotEmpty) {
          state = SearchStates.loaded(r);
        } else {
          state = SearchStates.failure(
            SearchFailure(errorMsg: "No results for this query"),
          );
        }
      },
    );
  }
}
