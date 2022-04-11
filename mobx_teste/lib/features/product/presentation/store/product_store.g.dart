// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ProductStore on _ProductStoreBase, Store {
  final _$listProductAtom = Atom(name: '_ProductStoreBase.listProduct');

  @override
  ListProducts? get listProduct {
    _$listProductAtom.reportRead();
    return super.listProduct;
  }

  @override
  set listProduct(ListProducts? value) {
    _$listProductAtom.reportWrite(value, super.listProduct, () {
      super.listProduct = value;
    });
  }

  final _$listAtom = Atom(name: '_ProductStoreBase.list');

  @override
  ObservableStream<ListProducts> get list {
    _$listAtom.reportRead();
    return super.list;
  }

  @override
  set list(ObservableStream<ListProducts> value) {
    _$listAtom.reportWrite(value, super.list, () {
      super.list = value;
    });
  }

  @override
  String toString() {
    return '''
listProduct: ${listProduct},
list: ${list}
    ''';
  }
}
