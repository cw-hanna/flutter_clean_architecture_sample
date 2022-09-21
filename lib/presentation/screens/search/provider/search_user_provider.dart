import 'dart:async';

import 'package:flutter/material.dart';
import 'package:image_search/core/resources/result.dart';
import 'package:image_search/data/models/api_loading_state.dart';
import 'package:image_search/data/models/search_user_model.dart';
import 'package:image_search/di/locator.dart';
import 'package:image_search/domain/usecases/search_user_use_case.dart';

class SearchUserProvider with ChangeNotifier {
  SearchUserModel? _searchUserModel;
  ApiLoadingState _state = ApiLoadingState(false);

  SearchUserModel? get searchUserModel => _searchUserModel;
  ApiLoadingState get state => _state;

  //api호출
  Future<void> fetch(String? userName) async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    SearchUserUseCase searchUserUseCase = serviceLocator<SearchUserUseCase>();
    final Result<SearchUserModel> result =
        await searchUserUseCase.call(userName);

    result.when(
        success: (userModel) {
          _searchUserModel = userModel;
          notifyListeners();
        },
        error: (message) {});

    notifyListeners();
    _state = state.copyWith(isLoading: false);
  }
}
