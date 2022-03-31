import 'package:challenge/app/modules/splash/splash_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'modules/home/home_module.dart';
import 'modules/home/home_store.dart';
import 'modules/home/repository/home_interface.dart';
import 'modules/home/repository/home_repository.dart';
import 'modules/splash/repository/splash_interface.dart';
import 'modules/splash/repository/splash_repository.dart';
import 'modules/splash/splash_store.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => SplashStore(i.get())),
    Bind.singleton<SplashInterface>((i) => SplashRepository()),
    Bind.lazySingleton((i) => HomeStore(i.get())),
    Bind.singleton<HomeInterface>((i) => HomeRepository()),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: SplashModule()),
    ModuleRoute('/home/', module: HomeModule()),
  ];
}
