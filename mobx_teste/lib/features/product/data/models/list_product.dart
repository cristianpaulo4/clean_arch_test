
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import '../../../product/data/models/data.dart';
part 'list_product.g.dart';


@JsonSerializable()
class ListProducts extends Equatable {
  Data data;
  ListProducts({
    required this.data,
  });

   factory ListProducts.fromJson(Map<String, dynamic> json) =>
      _$ListProductsFromJson(json);

  Map<String, dynamic> toJson() => _$ListProductsToJson(this);

  @override  
  List<Object?> get props => [data];
}
