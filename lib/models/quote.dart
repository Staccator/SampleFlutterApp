import 'package:json_annotation/json_annotation.dart';

part 'quote.g.dart';

//This uses json generator from https://pub.dev/packages/json_serializable
@JsonSerializable()
class Quote{
  final int id;
  final String content;
  bool isFavorite;

  Quote(this.id, this.content, {this.isFavorite = false});

  factory Quote.fromJson(Map<String, dynamic> json) => _$QuoteFromJson(json);
  Map<String, dynamic> toJson() => _$QuoteToJson(this);
}