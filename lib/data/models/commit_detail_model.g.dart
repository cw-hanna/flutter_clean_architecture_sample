// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'commit_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommitDetailModel _$$_CommitDetailModelFromJson(Map<String, dynamic> json) =>
    _$_CommitDetailModel(
      commit: json['commit'] == null
          ? null
          : CommitModel.fromJson(json['commit'] as Map<String, dynamic>),
      url: json['url'] as String?,
      html_url: json['html_url'] as String?,
    );

Map<String, dynamic> _$$_CommitDetailModelToJson(
        _$_CommitDetailModel instance) =>
    <String, dynamic>{
      'commit': instance.commit,
      'url': instance.url,
      'html_url': instance.html_url,
    };
