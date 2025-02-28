import 'package:cap_test/core/injection/provider.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final _initializationProvider = FutureProvider<Unit>((ref) async {
  final apiClient = ref.read(apiClientProvider);
  await apiClient.init();
  return unit;
});

class SearchScreen extends ConsumerWidget {
  final TextEditingController _controller = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  SearchScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // in a real life app this should be moved to a high level widget since we have only one screen we put it here so it is detected by ProviderScope
    ref.listen(_initializationProvider, (previous, next) {});

    final searchNotifierStates = ref.watch(searchNotifierProvider);

    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16),
        physics: AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  SizedBox(height: 100),
                  TextFormField(
                    controller: _controller,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Fill the query";
                      }
                      return null;
                    },
                    autocorrect: false,
                    decoration: InputDecoration(
                      hintText: "Search...",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        ref
                            .watch(searchNotifierProvider.notifier)
                            .search(_controller.text);
                      }
                    },
                    child: Text("Search"),
                  ),
                ],
              ),
            ),
            SizedBox(height: 4),
            searchNotifierStates.when(
              initial: () => SizedBox(),
              failure:
                  (failure) => Text(failure.errorMsg ?? "Something went wrong"),
              loaded: (searchRes) {
                final res = searchRes.results;
                return ListView.separated(
                  padding: EdgeInsets.zero,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    final songData = res[index];
                    return Card(
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(songData.artworkUrl100),
                        ),
                        title: Text(songData.artistName),
                        subtitle:
                            songData.trackCensoredName != null
                                ? Text(songData.trackCensoredName!)
                                : null,
                      ),
                    );
                  },
                  separatorBuilder: (_, __) => SizedBox(height: 12),
                  itemCount: res.length,
                );
              },
              empty: () => Text("There is no results"),
              loading: () => CircularProgressIndicator(),
            ),
            // LIST of data
          ],
        ),
      ),
    );
  }
}
