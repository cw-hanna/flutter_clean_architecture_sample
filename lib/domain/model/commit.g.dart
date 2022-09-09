// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'commit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Commit _$$_CommitFromJson(Map<String, dynamic> json) => _$_Commit(
      author: json['author'] == null
          ? null
          : User.fromJson(json['author'] as Map<String, dynamic>),
      committer: json['committer'] == null
          ? null
          : User.fromJson(json['committer'] as Map<String, dynamic>),
      message: json['message'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$_CommitToJson(_$_Commit instance) => <String, dynamic>{
      'author': instance.author,
      'committer': instance.committer,
      'message': instance.message,
      'url': instance.url,
    };
