import '../../data/models/list_product.dart';
import '../repositories/product_repository.dart';

class GetAllProduct {
  final ProductRepository productRepository;
  GetAllProduct({
    required this.productRepository,
  });
  Future<ListProducts> call() async {
    return await productRepository.getAllProduct();
  }
}
