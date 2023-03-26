// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ProductModel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ProductModel on _ProductModelBase, Store {
  late final _$collectionofBrandAtom =
      Atom(name: '_ProductModelBase.collectionofBrand', context: context);

  @override
  List<String> get collectionofBrand {
    _$collectionofBrandAtom.reportRead();
    return super.collectionofBrand;
  }

  @override
  set collectionofBrand(List<String> value) {
    _$collectionofBrandAtom.reportWrite(value, super.collectionofBrand, () {
      super.collectionofBrand = value;
    });
  }

  late final _$collectionOfProductsAtom =
      Atom(name: '_ProductModelBase.collectionOfProducts', context: context);

  @override
  List<Map<String, dynamic>> get collectionOfProducts {
    _$collectionOfProductsAtom.reportRead();
    return super.collectionOfProducts;
  }

  @override
  set collectionOfProducts(List<Map<String, dynamic>> value) {
    _$collectionOfProductsAtom.reportWrite(value, super.collectionOfProducts,
        () {
      super.collectionOfProducts = value;
    });
  }

  late final _$_ProductModelBaseActionController =
      ActionController(name: '_ProductModelBase', context: context);

  @override
  dynamic setBrand({required List<String> collectionofBrand}) {
    final _$actionInfo = _$_ProductModelBaseActionController.startAction(
        name: '_ProductModelBase.setBrand');
    try {
      return super.setBrand(collectionofBrand: collectionofBrand);
    } finally {
      _$_ProductModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setProduct(
      {required List<Map<String, dynamic>> collectionOfProducts}) {
    final _$actionInfo = _$_ProductModelBaseActionController.startAction(
        name: '_ProductModelBase.setProduct');
    try {
      return super.setProduct(collectionOfProducts: collectionOfProducts);
    } finally {
      _$_ProductModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic tempProduct(
      {required List<Map<String, dynamic>> collectionOfTempProducts}) {
    final _$actionInfo = _$_ProductModelBaseActionController.startAction(
        name: '_ProductModelBase.tempProduct');
    try {
      return super
          .tempProduct(collectionOfTempProducts: collectionOfTempProducts);
    } finally {
      _$_ProductModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
collectionofBrand: ${collectionofBrand},
collectionOfProducts: ${collectionOfProducts}
    ''';
  }
}
