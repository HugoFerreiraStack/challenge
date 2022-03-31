import 'package:challenge/app/modules/splash/repository/splash_interface.dart';
import 'package:challenge/app/modules/splash/repository/splash_repository.dart';
import 'package:challenge/app/modules/splash/splash_Page.dart';
import 'package:challenge/app/modules/splash/splash_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SplashModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => SplashStore(i.get())),
    Bind.singleton<SplashInterface>((i) => SplashRepository()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const SplashPage()),
  ];
}
