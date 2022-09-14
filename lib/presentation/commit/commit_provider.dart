import 'dart:async';

import 'package:flutter/material.dart';
import 'package:image_search/data/data_source/result.dart';
import 'package:image_search/di/locator.dart';
import 'package:image_search/domain/model/commit.dart';
import 'package:image_search/domain/usecase/get_commits_user_case.dart';
import 'package:image_search/presentation/commit/commit_state.dart';

class CommitProvider with ChangeNotifier {
  CommitProvider();

  CommitState _state = CommitState([], false);
  CommitState get state => _state;

  //api호출
  Future<void> fetch() async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    GetCommitsUseCase getCommitsUseCase = serviceLocator<GetCommitsUseCase>();
    final Result<List<Commit>> result = await getCommitsUseCase.call();

    result.when(
        success: (commits) {
          _state = state.copyWith(commits: commits);
          notifyListeners();
        },
        error: (message) {});
    notifyListeners();
    _state = state.copyWith(isLoading: false);
  }
}
