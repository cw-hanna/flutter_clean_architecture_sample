import 'dart:async';

import 'package:flutter/material.dart';
import 'package:image_search/data/data_source/result.dart';
import 'package:image_search/di/locator.dart';
import 'package:image_search/domain/usecase/get_commit_detail_use_case.dart';

class CommitDetailProvider with ChangeNotifier {
  String _htmlUrl = '';
  String get htmlUrl => _htmlUrl;

  //api호출
  Future<String> fetch(String? url) async {
    GetCommitDetailUseCase getCommitDetailUseCase =
        serviceLocator<GetCommitDetailUseCase>();
    final Result<String> result = await getCommitDetailUseCase.call(url);

    result.when(success: (htmlUrl) {
      _htmlUrl = htmlUrl;
    }, error: (message) {
      _htmlUrl = '';
    });
    notifyListeners();
    return _htmlUrl;
  }
}
