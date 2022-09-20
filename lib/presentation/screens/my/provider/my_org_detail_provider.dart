import 'dart:async';

import 'package:flutter/material.dart';
import 'package:image_search/core/resources/result.dart';
import 'package:image_search/data/models/api_loading_state.dart';
import 'package:image_search/di/locator.dart';
import 'package:image_search/domain/entities/org_detail.dart';
import 'package:image_search/domain/usecases/get_orgs_detail_use_case.dart';

class MyOrgDetailProvider with ChangeNotifier {
  Map<String, List<OrgDetail>> _orgMap = {}; // key : organization명, value : organization별 repository목록
  Map<String, ApiLoadingState> _loadingStateMap = {}; // key : organization명, value : organization별 repository목록 api 호출 로딩상태
  
  Map<String, ApiLoadingState> get loadingStateMap => _loadingStateMap;
  Map<String, List<OrgDetail>> get orgMap => _orgMap;

  //api호출
  Future<void> fetch(String? orgName) async {
    //값이 없는경우 api호출 결과 추가
    if (_orgMap[orgName] == null) {
      _loadingStateMap.addAll({orgName.toString() : ApiLoadingState(true)});
      notifyListeners();

      GetOrgsDetailUseCase getOrgsDetailUseCase =
          serviceLocator<GetOrgsDetailUseCase>();

      final Result<List<OrgDetail>> result =
          await getOrgsDetailUseCase.call(orgName);

      result.when(
          success: (orgs) {
            _orgMap.addAll({orgName.toString(): orgs});
            notifyListeners();
          },
          error: (message) {});

      notifyListeners();
       _loadingStateMap.addAll({orgName.toString() : ApiLoadingState(false)});
    }
  }
}
