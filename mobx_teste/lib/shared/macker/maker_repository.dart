import '../../features/product/data/datasources/services/product_impl_services.dart';
import '../../features/product/data/repositories/product_impl_repository.dart';
import '../../main.dart';

var manckerProductRepositoryImpl = ProductImplRepository(
  productServices: ProductImplServices(
    hasuraConnect: hasuraConnect,
  ),
);
