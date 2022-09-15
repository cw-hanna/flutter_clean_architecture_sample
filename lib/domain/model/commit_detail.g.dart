// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'commit_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommitDetail _$$_CommitDetailFromJson(Map<String, dynamic> json) =>
    _$_CommitDetail(
      commit: json['commit'] == null
          ? null
          : Commit.fromJson(json['commit'] as Map<String, dynamic>),
      url: json['url'] as String?,
      html_url: json['html_url'] as String?,
    );

Map<String, dynamic> _$$_CommitDetailToJson(_$_CommitDetail instance) =>
    <String, dynamic>{
      'commit': instance.commit,
      'url': instance.url,
      'html_url': instance.html_url,
    };
