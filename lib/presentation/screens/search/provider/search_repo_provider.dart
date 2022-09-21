import 'dart:async';

import 'package:flutter/material.dart';
import 'package:image_search/core/resources/result.dart';
import 'package:image_search/data/models/api_loading_state.dart';
import 'package:image_search/data/models/search_repo_model.dart';
import 'package:image_search/di/locator.dart';
import 'package:image_search/domain/usecases/search_repo_use_case.dart';

class SearchRepoProvider with ChangeNotifier {
  List<SearchRepoModel>? _searchRepoModel;
  ApiLoadingState _state = ApiLoadingState(false);

  List<SearchRepoModel>? get searchRepoModel => _searchRepoModel;
  ApiLoadingState get state => _state;

  //api호출
  Future<void> fetch(String? userName) async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    SearchRepoUseCase searchRepoUseCase = serviceLocator<SearchRepoUseCase>();
    final Result<List<SearchRepoModel>> result =
        await searchRepoUseCase.call(userName);

    result.when(
        success: (repoModel) {
          _searchRepoModel = repoModel;
          notifyListeners();
        },
        error: (message) {});

    notifyListeners();
    _state = state.copyWith(isLoading: false);
  }
}
