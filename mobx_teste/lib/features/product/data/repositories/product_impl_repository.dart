import 'package:mobx_teste/features/product/domain/repositories/product_repository.dart';
import 'package:mobx_teste/features/product/domain/services/product_services.dart';
import '../models/list_product.dart';

class ProductImplRepository implements ProductRepository {
  final ProductServices productServices;
  ProductImplRepository({
    required this.productServices,
  });

  @override
  Future<ListProducts> getAllProduct() async {
    var res = await productServices.getAllProduct();
    var data = ListProducts.fromJson(res);
    return data;
  }

  @override
  Stream<ListProducts> getAllProductStream() async* {
    yield* productServices.getAllProductStream().asyncMap(
          (event) => ListProducts.fromJson(event),
        );
  }
}
