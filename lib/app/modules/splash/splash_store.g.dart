// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'splash_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SplashStore on _SplashStoreBase, Store {
  Computed<bool>? _$isLoadingTokenComputed;

  @override
  bool get isLoadingToken =>
      (_$isLoadingTokenComputed ??= Computed<bool>(() => super.isLoadingToken,
              name: '_SplashStoreBase.isLoadingToken'))
          .value;
  Computed<bool>? _$isLoadingGenresComputed;

  @override
  bool get isLoadingGenres =>
      (_$isLoadingGenresComputed ??= Computed<bool>(() => super.isLoadingGenres,
              name: '_SplashStoreBase.isLoadingGenres'))
          .value;

  final _$getAccessAtom = Atom(name: '_SplashStoreBase.getAccess');

  @override
  ObservableFuture<Either<String, String>>? get getAccess {
    _$getAccessAtom.reportRead();
    return super.getAccess;
  }

  @override
  set getAccess(ObservableFuture<Either<String, String>>? value) {
    _$getAccessAtom.reportWrite(value, super.getAccess, () {
      super.getAccess = value;
    });
  }

  final _$genresAtom = Atom(name: '_SplashStoreBase.genres');

  @override
  ObservableFuture<Either<String, List<Genres>>>? get genres {
    _$genresAtom.reportRead();
    return super.genres;
  }

  @override
  set genres(ObservableFuture<Either<String, List<Genres>>>? value) {
    _$genresAtom.reportWrite(value, super.genres, () {
      super.genres = value;
    });
  }

  final _$getGenresAsyncAction = AsyncAction('_SplashStoreBase.getGenres');

  @override
  Future<Either<String, List<Genres>>> getGenres() {
    return _$getGenresAsyncAction.run(() => super.getGenres());
  }

  final _$_SplashStoreBaseActionController =
      ActionController(name: '_SplashStoreBase');

  @override
  Future<Either<String, String>> getAccessToken() {
    final _$actionInfo = _$_SplashStoreBaseActionController.startAction(
        name: '_SplashStoreBase.getAccessToken');
    try {
      return super.getAccessToken();
    } finally {
      _$_SplashStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void nextModule() {
    final _$actionInfo = _$_SplashStoreBaseActionController.startAction(
        name: '_SplashStoreBase.nextModule');
    try {
      return super.nextModule();
    } finally {
      _$_SplashStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
getAccess: ${getAccess},
genres: ${genres},
isLoadingToken: ${isLoadingToken},
isLoadingGenres: ${isLoadingGenres}
    ''';
  }
}
