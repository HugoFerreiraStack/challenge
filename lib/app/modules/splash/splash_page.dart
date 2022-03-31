import 'dart:developer';

import 'package:challenge/app/modules/home/home_store.dart';
import 'package:challenge/app/shared/constants/assets.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:challenge/app/modules/splash/splash_store.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  final String title;
  const SplashPage({Key? key, this.title = 'SplashPage'}) : super(key: key);
  @override
  SplashPageState createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> {
  final SplashStore store = Modular.get();
  final HomeStore homeStore = Modular.get();

  @override
  void initState() {
    super.initState();
    store.getAccessToken().then((value) {
      value.fold((l) => log(l), (r) {
        homeStore.setToken(r);
        store.getGenres().then((value) => value.fold((l) => log(l), (r) {
              homeStore.updateListGenres(r);
              store.nextModule();
            }));
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SizedBox(height: 100, child: Image.asset(AppAssets.logo)),
      ),
    );
  }
}
