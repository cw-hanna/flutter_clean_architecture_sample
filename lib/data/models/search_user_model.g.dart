// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchUserModel _$$_SearchUserModelFromJson(Map<String, dynamic> json) =>
    _$_SearchUserModel(
      login: json['login'] as String?,
      name: json['name'] as String?,
      avatar_url: json['avatar_url'] as String?,
      html_url: json['html_url'] as String?,
      public_repos: json['public_repos'] as int?,
    );

Map<String, dynamic> _$$_SearchUserModelToJson(_$_SearchUserModel instance) =>
    <String, dynamic>{
      'login': instance.login,
      'name': instance.name,
      'avatar_url': instance.avatar_url,
      'html_url': instance.html_url,
      'public_repos': instance.public_repos,
    };
