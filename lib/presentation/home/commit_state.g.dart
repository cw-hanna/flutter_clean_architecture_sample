// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'commit_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommitState _$$_CommitStateFromJson(Map<String, dynamic> json) =>
    _$_CommitState(
      (json['commits'] as List<dynamic>)
          .map((e) => Commit.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['isLoading'] as bool,
    );

Map<String, dynamic> _$$_CommitStateToJson(_$_CommitState instance) =>
    <String, dynamic>{
      'commits': instance.commits,
      'isLoading': instance.isLoading,
    };
