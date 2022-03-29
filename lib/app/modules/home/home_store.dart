import 'dart:developer';

import 'package:challenge/app/shared/constants/api.dart';
import 'package:dartz/dartz.dart';
import 'package:mobx/mobx.dart';

import 'repository/home_interface.dart';

part 'home_store.g.dart';

class HomeStore = HomeStoreBase with _$HomeStore;

abstract class HomeStoreBase with Store {
  final HomeInterface repository;

  HomeStoreBase(this.repository);

  @observable
  String? accessToken;

  @action
  void setToken(String value) {
    accessToken = value;
    log(accessToken!);
  }

  @observable
  ObservableFuture<Either<String, String>>? getAccess;

  @action
  Future<Either<String, String>> getAccessToken() {
    return getAccess = repository.getToken(Api.API_KEY).asObservable();
  }

  @computed
  bool get isLoadingToken {
    if (getAccess == null) return false;
    return getAccess!.status == FutureStatus.pending;
  }
}
