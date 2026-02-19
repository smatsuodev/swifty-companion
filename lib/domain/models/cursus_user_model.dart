import 'package:freezed_annotation/freezed_annotation.dart';

part 'cursus_user_model.freezed.dart';
part 'cursus_user_model.g.dart';

@freezed
abstract class CursusUserModel with _$CursusUserModel {
  @JsonSerializable(explicitToJson: true)
  const factory CursusUserModel({
    required double level,
    required CursusModel cursus,
    required List<CursusUserSkillModel> skills,
  }) = _CursusUserModel;

  factory CursusUserModel.fromJson(Map<String, Object?> json) =>
      _$CursusUserModelFromJson(json);
}

@freezed
abstract class CursusUserSkillModel with _$CursusUserSkillModel {
  @JsonSerializable(explicitToJson: true)
  const factory CursusUserSkillModel({
    required int id,
    required String name,
    required double level,
  }) = _CursusUserSkillModel;

  factory CursusUserSkillModel.fromJson(Map<String, Object?> json) =>
      _$CursusUserSkillModelFromJson(json);
}

@freezed
abstract class CursusModel with _$CursusModel {
  @JsonSerializable(explicitToJson: true)
  const factory CursusModel({required String name, required String slug}) =
      _CursusModel;

  factory CursusModel.fromJson(Map<String, Object?> json) =>
      _$CursusModelFromJson(json);
}
