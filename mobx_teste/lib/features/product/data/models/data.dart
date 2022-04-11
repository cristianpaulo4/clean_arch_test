
import 'package:json_annotation/json_annotation.dart';
import '../../../product/domain/entities/product_entities.dart';
import 'package:equatable/equatable.dart';
part 'data.g.dart';


@JsonSerializable()
class Data extends  Equatable {
  List<ProductEtities> produto;
  Data({
    required this.produto,
  });

  factory Data.fromJson(Map<String, dynamic> json) =>
      _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);

  @override 
  List<Object?> get props => [produto];
  
}
