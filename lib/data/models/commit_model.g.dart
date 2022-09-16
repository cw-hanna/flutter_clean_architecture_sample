// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'commit_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommitModel _$$_CommitModelFromJson(Map<String, dynamic> json) =>
    _$_CommitModel(
      author: json['author'] == null
          ? null
          : UserModel.fromJson(json['author'] as Map<String, dynamic>),
      committer: json['committer'] == null
          ? null
          : UserModel.fromJson(json['committer'] as Map<String, dynamic>),
      message: json['message'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$_CommitModelToJson(_$_CommitModel instance) =>
    <String, dynamic>{
      'author': instance.author,
      'committer': instance.committer,
      'message': instance.message,
      'url': instance.url,
    };
