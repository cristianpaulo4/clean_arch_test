import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx_teste/features/product/presentation/store/product_store.dart';
import 'package:mobx_teste/routes/app_routes.dart';

class ProductPage extends StatelessWidget {
  ProductPage({Key? key}) : super(key: key);

  ProductStore _productStore = GetIt.I.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Observer(
        builder: (_) {
          if (_productStore.listProduct == null) {
            return const Center(child: CircularProgressIndicator());
          }
          return ListView.builder(
            itemCount: _productStore.listProduct!.data.produto.length,
            itemBuilder: (_, i) {
              var product =
                  _productStore.listProduct!.data.produto.elementAt(i);
              return ListTile(
                title: Text(product.descricao!),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {          
          Navigator.pushNamed(context, Routes.addProduct, arguments: "Ola Mundo");
        },
      ),
    );
  }
}
