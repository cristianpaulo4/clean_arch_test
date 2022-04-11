import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hasura_connect/hasura_connect.dart';
import 'package:mobx_teste/features/product/domain/usecases/get_list_all_product.dart';
import 'package:mobx_teste/features/product/domain/usecases/get_list_all_product_stream.dart';
import 'package:mobx_teste/routes/app_pages.dart';
import 'package:mobx_teste/routes/app_routes.dart';
import 'package:mobx_teste/shared/maker/maker_repository.dart';
import 'features/product/presentation/store/product_store.dart';

GetIt getIt = GetIt.instance;

String url = 'https://appgestor.herokuapp.com/v1/graphql';
HasuraConnect hasuraConnect = HasuraConnect(url);

void main() {
  setup();
  runApp(const MyApp());
}

void setup() {
  getIt.registerSingleton<ProductStore>(
    ProductStore(
      getAllProduct: GetAllProduct(
        productRepository: makerProductRepositoryImpl,
      ),
      getAllProductStream: GetAllProductStream(
        productRepository: makerProductRepositoryImpl,
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      initialRoute: Routes.inital,
      routes: AppPages.pages,
    );
  }
}
