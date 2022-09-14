import 'dart:async';

import 'package:flutter/material.dart';
import 'package:image_search/data/data_source/result.dart';
import 'package:image_search/di/locator.dart';
import 'package:image_search/domain/model/commit.dart';
import 'package:image_search/domain/usecase/get_commits_use_case.dart';
import 'package:image_search/presentation/commit/search/commit_api_loading_state.dart';

class CommitSearchProvider with ChangeNotifier {
  List<Commit> _commits = [];
  CommitApiLoadingState _state = CommitApiLoadingState(false);

  CommitApiLoadingState get state => _state;
  List<Commit> get commits => _commits;

  //api호출
  Future<void> fetch() async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    GetCommitsUseCase getCommitsUseCase = serviceLocator<GetCommitsUseCase>();
    final Result<List<Commit>> result = await getCommitsUseCase.call();

    result.when(
        success: (commits) {
          _commits = commits;
          notifyListeners();
        },
        error: (message) {});
    notifyListeners();
    _state = state.copyWith(isLoading: false);
  }
}
