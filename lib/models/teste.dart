import 'package:json_annotation/json_annotation.dart';

part 'teste.g.dart';

@JsonSerializable()
class Bene {
  Bene({
    this.nomebene,
    this.cpfbene,
  });

  final String nomebene;
  final int cpfbene;

  factory Bene.fromJson(Map<String, dynamic> json) =>
      _$BeneFromJson(json);
  }
