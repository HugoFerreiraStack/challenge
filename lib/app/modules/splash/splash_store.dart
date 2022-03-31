import 'package:challenge/app/modules/splash/repository/splash_interface.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import '../../shared/constants/api.dart';

part 'splash_store.g.dart';

class SplashStore = _SplashStoreBase with _$SplashStore;

abstract class _SplashStoreBase with Store {
  final SplashInterface repository;

  _SplashStoreBase(this.repository);

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

  @action
  void nextModule() {
    Future.delayed(
      const Duration(seconds: 4),
      () => Modular.to.pushReplacementNamed('/home/'),
    );
  }
}
