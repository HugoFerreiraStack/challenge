import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'splash_store.g.dart';

class SplashStore = _SplashStoreBase with _$SplashStore;

abstract class _SplashStoreBase with Store {
  @action
  void nextModule() {
    Future.delayed(
      const Duration(seconds: 4),
      () => Modular.to.pushReplacementNamed('/home/'),
    );
  }
}
