import 'package:flutter_test/flutter_test.dart';
import 'package:mobx_teste/features/product/data/datasources/services/product_impl_services.dart';
import 'package:mobx_teste/features/product/data/models/list_product.dart';
import 'package:mobx_teste/features/product/data/repositories/product_impl_repository.dart';
import 'package:mobx_teste/features/product/domain/usecases/get_list_all_product.dart';
import 'package:mobx_teste/shared/infra/http_impl/http_impl.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'use_case_test.mocks.dart';

Map<String, dynamic> mock = {
  "data": {
    "produto": [
      {"id": 2, "descricao": "teste"},
      {"id": 1, "descricao": "Feijão"}
    ]
  }
};

@GenerateMocks([HasuraImpl])
void main() {
  late GetAllProduct getAllProduct;

  late MockHasuraImpl mockHasuraImpl;

  setUp(() {
    mockHasuraImpl = MockHasuraImpl();
    final repository = ProductImplRepository(
      productServices: ProductImplServices(
        hasuraConnect: mockHasuraImpl,
      ),
    );

    getAllProduct = GetAllProduct(
      productRepository: repository,
    );

    when(mockHasuraImpl.query(any)).thenAnswer(
      (_) async => mock,
    );
  });

  test("Get all products", () async {
    var res = await getAllProduct.call();
    var mockTest = ListProducts.fromJson(mock);
    expect(res, mockTest);
  });


}
