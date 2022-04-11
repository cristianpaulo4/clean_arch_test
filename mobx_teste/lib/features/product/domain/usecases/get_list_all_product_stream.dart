import '../../data/models/list_product.dart';
import '../repositories/product_repository.dart';

class GetAllProductStream {
  final ProductRepository productRepository;
  GetAllProductStream({
    required this.productRepository,
  });
  Stream<ListProducts> call() async* {
    yield* productRepository.getAllProductStream();
  }
}
