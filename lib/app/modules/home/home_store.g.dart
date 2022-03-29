// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeStore on HomeStoreBase, Store {
  Computed<bool>? _$isLoadingTokenComputed;

  @override
  bool get isLoadingToken =>
      (_$isLoadingTokenComputed ??= Computed<bool>(() => super.isLoadingToken,
              name: 'HomeStoreBase.isLoadingToken'))
          .value;

  final _$accessTokenAtom = Atom(name: 'HomeStoreBase.accessToken');

  @override
  String? get accessToken {
    _$accessTokenAtom.reportRead();
    return super.accessToken;
  }

  @override
  set accessToken(String? value) {
    _$accessTokenAtom.reportWrite(value, super.accessToken, () {
      super.accessToken = value;
    });
  }

  final _$getAccessAtom = Atom(name: 'HomeStoreBase.getAccess');

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

  final _$HomeStoreBaseActionController =
      ActionController(name: 'HomeStoreBase');

  @override
  void setToken(String value) {
    final _$actionInfo = _$HomeStoreBaseActionController.startAction(
        name: 'HomeStoreBase.setToken');
    try {
      return super.setToken(value);
    } finally {
      _$HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  Future<Either<String, String>> getAccessToken() {
    final _$actionInfo = _$HomeStoreBaseActionController.startAction(
        name: 'HomeStoreBase.getAccessToken');
    try {
      return super.getAccessToken();
    } finally {
      _$HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
accessToken: ${accessToken},
getAccess: ${getAccess},
isLoadingToken: ${isLoadingToken}
    ''';
  }
}
