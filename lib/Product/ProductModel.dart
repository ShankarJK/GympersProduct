import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'ProductModel.g.dart';

class ProductModel = _ProductModelBase with _$ProductModel;

abstract class _ProductModelBase with Store {
  @observable
  List<String> collectionofBrand = [];

  @observable
  List<Map<String, dynamic>> collectionOfProducts = [{}];
  List<Map<String, dynamic>> collectionOfTempProducts = [{}];
  @action
  setBrand({required List<String> collectionofBrand}) {
    this.collectionofBrand = [];
    this.collectionofBrand = collectionofBrand;
  }

  @action
  setProduct({required List<Map<String, dynamic>> collectionOfProducts}) {
    this.collectionOfProducts = [];
    this.collectionOfProducts = collectionOfProducts;
  }

  @action
  tempProduct({required List<Map<String, dynamic>> collectionOfTempProducts}) {
    this.collectionOfTempProducts = [];
    this.collectionOfTempProducts = collectionOfTempProducts;
  }
}
