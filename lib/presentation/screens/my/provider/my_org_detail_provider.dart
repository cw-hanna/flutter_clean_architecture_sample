import 'dart:async';

import 'package:flutter/material.dart';
import 'package:image_search/core/resources/result.dart';
import 'package:image_search/data/models/api_loading_state.dart';
import 'package:image_search/di/locator.dart';
import 'package:image_search/domain/entities/commit.dart';
import 'package:image_search/domain/entities/org.dart';
import 'package:image_search/domain/usecases/get_commits_use_case.dart';
import 'package:image_search/domain/usecases/get_orgs_use_case.dart';

class MyOrgDetailProvider with ChangeNotifier {
  List<Org> _orgs = [];
  ApiLoadingState _state = ApiLoadingState(false);

  ApiLoadingState get state => _state;
  List<Org> get orgs => _orgs;

  //api호출
  Future<void> fetch() async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    GetOrgsUseCase getOrgsUseCase = serviceLocator<GetOrgsUseCase>();

    final Result<List<Org>> result = await getOrgsUseCase.call();

    result.when(
        success: (orgs) {
          _orgs = orgs;
          notifyListeners();
        },
        error: (message) {});
    notifyListeners();
    _state = state.copyWith(isLoading: false);
  }
}
