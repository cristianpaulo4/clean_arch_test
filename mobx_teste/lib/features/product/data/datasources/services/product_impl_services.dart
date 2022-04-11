import 'dart:developer';
import 'package:hasura_connect/hasura_connect.dart';
import '../../../domain/services/product_services.dart';

class ProductImplServices implements ProductServices {
  final HasuraConnect hasuraConnect;
  ProductImplServices({
    required this.hasuraConnect,
  });

  @override
  Future<Map<String, dynamic>> getAllProduct() async {
    String document = """
      query MyQuery {
        produto {
          id
          descricao
        }
      }
    """;
    try {
      var res = await hasuraConnect.query(document);
      return res;
    } catch (e) {
      log(e.toString(), error: "Erro ao buscar produtos");
      return {};
    }
  }

  @override
  Stream<dynamic> getAllProductStream() async* {
    String document = """      
    subscription MySubscription {
      produto {
        id
        descricao
      }
    }    
    """;

    Snapshot snapshot = await hasuraConnect.subscription(document);

    yield* snapshot;
  }
}
