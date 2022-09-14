import 'dart:async';

import 'package:flutter/material.dart';
import 'package:image_search/data/data_source/result.dart';
import 'package:image_search/di/locator.dart';
import 'package:image_search/domain/model/commit.dart';
import 'package:image_search/domain/usecase/get_commits_user_case.dart';

class CommitSearchProvider with ChangeNotifier {
  List<Commit> _commits = [];
  bool _isLoading = true;

  List<Commit> get commits => _commits;
  bool get isLoading => _isLoading;

  //api호출
  Future<void> fetch() async {
    _isLoading = true;
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
    _isLoading = false;
  }
}
