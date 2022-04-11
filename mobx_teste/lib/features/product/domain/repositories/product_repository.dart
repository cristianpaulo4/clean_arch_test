import '../../data/models/list_product.dart';

abstract class ProductRepository {
  Future<ListProducts> getAllProduct();
  Stream<ListProducts> getAllProductStream();
}