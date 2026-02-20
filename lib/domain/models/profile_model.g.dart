// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProfileModel _$ProfileModelFromJson(Map<String, dynamic> json) =>
    _ProfileModel(
      login: json['login'] as String,
      displayName: json['displayname'] as String,
      image: ProfileImageModel.fromJson(json['image'] as Map<String, dynamic>),
      cursusUsers: (json['cursus_users'] as List<dynamic>)
          .map((e) => CursusUserModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      wallet: (json['wallet'] as num).toInt(),
      correctionPoint: (json['correction_point'] as num).toInt(),
      titlesUsers: (json['titles_users'] as List<dynamic>)
          .map(
            (e) => ProfileTitlesUserModel.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
      titles: (json['titles'] as List<dynamic>)
          .map((e) => ProfileTitleModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      projectsUsers: (json['projects_users'] as List<dynamic>)
          .map((e) => ProjectUserModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProfileModelToJson(_ProfileModel instance) =>
    <String, dynamic>{
      'login': instance.login,
      'displayname': instance.displayName,
      'image': instance.image.toJson(),
      'cursus_users': instance.cursusUsers.map((e) => e.toJson()).toList(),
      'wallet': instance.wallet,
      'correction_point': instance.correctionPoint,
      'titles_users': instance.titlesUsers.map((e) => e.toJson()).toList(),
      'titles': instance.titles.map((e) => e.toJson()).toList(),
      'projects_users': instance.projectsUsers.map((e) => e.toJson()).toList(),
    };

_ProfileTitle _$ProfileTitleFromJson(Map<String, dynamic> json) =>
    _ProfileTitle(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$ProfileTitleToJson(_ProfileTitle instance) =>
    <String, dynamic>{'id': instance.id, 'name': instance.name};

_ProfileTitlesUser _$ProfileTitlesUserFromJson(Map<String, dynamic> json) =>
    _ProfileTitlesUser(
      selected: json['selected'] as bool,
      title_id: (json['title_id'] as num).toInt(),
    );

Map<String, dynamic> _$ProfileTitlesUserToJson(_ProfileTitlesUser instance) =>
    <String, dynamic>{
      'selected': instance.selected,
      'title_id': instance.title_id,
    };

_ProfileImageModel _$ProfileImageModelFromJson(Map<String, dynamic> json) =>
    _ProfileImageModel(link: json['link'] as String);

Map<String, dynamic> _$ProfileImageModelToJson(_ProfileImageModel instance) =>
    <String, dynamic>{'link': instance.link};
