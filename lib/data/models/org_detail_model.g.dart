// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'org_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrgDetailModel _$$_OrgDetailModelFromJson(Map<String, dynamic> json) =>
    _$_OrgDetailModel(
      name: json['name'] as String?,
      html_url: json['html_url'] as String?,
      description: json['description'] as String?,
      created_at: json['created_at'] as String?,
    );

Map<String, dynamic> _$$_OrgDetailModelToJson(_$_OrgDetailModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'html_url': instance.html_url,
      'description': instance.description,
      'created_at': instance.created_at,
    };
