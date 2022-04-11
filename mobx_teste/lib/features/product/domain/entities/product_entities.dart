import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
part 'product_entities.g.dart';


@JsonSerializable()
class ProductEtities  extends Equatable {
  int? id;
  String? descricao;
  ProductEtities({
    this.id,
    this.descricao,
  });

  factory ProductEtities.fromJson(Map<String, dynamic> json) =>
      _$ProductEtitiesFromJson(json);

  Map<String, dynamic> toJson() => _$ProductEtitiesToJson(this);

  @override 
  List<Object?> get props => [id, descricao];
}
