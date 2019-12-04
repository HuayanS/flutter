// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teste.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Bene _$BeneFromJson(Map<String, dynamic> json) {
  return Bene(
    nomebene: json['nomebene'] as String,
    cpfbene: json['cpfbene'] as int,
  );
}

Map<String, dynamic> _$BeneToJson(Bene instance) => <String, dynamic>{
      'nomebene': instance.nomebene,
      'cpfbene': instance.cpfbene,
    };
