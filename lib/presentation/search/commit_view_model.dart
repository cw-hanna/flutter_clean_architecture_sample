import 'dart:async';

import 'package:flutter/material.dart';
import 'package:image_search/data/data_source/result.dart';
import 'package:image_search/domain/model/commit.dart';
import 'package:image_search/domain/usecase/get_commits_user_case.dart';
import 'package:image_search/presentation/search/commit_state.dart';
import 'package:image_search/presentation/search/home_ui_event.dart';

class CommitViewModel with ChangeNotifier {
  final GetCommitsUseCase getCommitsUseCase;
  CommitViewModel(this.getCommitsUseCase);

  final _eventController = StreamController<HomeUiEvent>();
  Stream<HomeUiEvent> get eventStream => _eventController.stream;

  CommitState _state = CommitState([], false);
  CommitState get state => _state;

  //api호출
  Future<void> fetch() async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    final Result<List<Commit>> result = await getCommitsUseCase.call();

    result.when(success: (commits) {
      _state = state.copyWith(commits: commits);
      notifyListeners();
    }, error: (message) {
      _eventController.add(HomeUiEvent.showSnackBar(message));
    });
    notifyListeners();
    _state = state.copyWith(isLoading: false);
  }
}
