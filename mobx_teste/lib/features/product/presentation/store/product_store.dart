import 'package:flutter/foundation.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_teste/features/product/data/models/list_product.dart';
import 'package:mobx_teste/features/product/domain/usecases/get_list_all_product.dart';
import 'package:mobx_teste/features/product/domain/usecases/get_list_all_product_stream.dart';
part 'product_store.g.dart';

class ProductStore = _ProductStoreBase with _$ProductStore;

abstract class _ProductStoreBase with Store {
  final GetAllProduct getAllProduct;
  final GetAllProductStream getAllProductStream;
  _ProductStoreBase({
    required this.getAllProduct,
    required this.getAllProductStream,
  }) {
    getProduct();
    getAllStream();
  }

  @observable
  ListProducts? listProduct;

  @observable
  late ObservableStream<ListProducts> list;

  void getProduct() async {
    var res = await getAllProduct.call();   
  }

  void getAllStream() {    
    getAllProductStream.call().asObservable().listen((value) {
      listProduct = value;
    });
  }
}
