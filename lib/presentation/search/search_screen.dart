import 'dart:async';

import 'package:flutter/material.dart';
import 'package:image_search/presentation/search/commit_view_model.dart';
import 'package:image_search/presentation/search/widget/commit_widget.dart';
import 'package:image_search/presentation/theme/cw_colors.dart';

import 'package:provider/provider.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final _controller = TextEditingController();
  StreamSubscription? _subscription;

  @override
  void initState() {
    super.initState();

    Future.microtask(() {
      final viewModel = context.read<CommitViewModel>();
      _subscription = viewModel.eventStream.listen((event) {
        event.when(showSnackBar: (message) {
          final snackBar = SnackBar(content: Text(message));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        });
      });
    });
  }

  @override
  void dispose() {
    _subscription?.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<CommitViewModel>();
    final state = viewModel.state;

    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: GestureDetector(
              onTap: () {
                viewModel.fetch();
              },
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                    color: CwColors.color2),
                child: const Center(child: Text('커밋기록 불러오기')),
              ),
            ),
          ),
          state.isLoading
              ? const CircularProgressIndicator()
              : Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.all(16.0),
                    itemCount: state.commits.length,
                    itemBuilder: (context, index) {
                      final commit = state.commits[index];
                      return CommitWidget(commit: commit);
                    },
                  ),
                )
        ],
      ),
    );
  }
}
