import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_user_model.freezed.dart';
part 'project_user_model.g.dart';

@freezed
abstract class ProjectUserModel with _$ProjectUserModel {
  const factory ProjectUserModel({
    required int id,
    @JsonKey(name: 'final_mark') required int? finalMark,
    @JsonKey(unknownEnumValue: ProjectStatus._NOT_SUPPORTED)
    required ProjectStatus status,
    @JsonKey(name: 'validated?') required bool? validated,
    required ProjectModel project,
    @JsonKey(name: 'cursus_ids') required List<int> cursusIds,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
  }) = _ProjectUserModel;

  factory ProjectUserModel.fromJson(Map<String, Object?> json) =>
      _$ProjectUserModelFromJson(json);
}

enum ProjectStatus {
  @JsonValue('finished')
  finished,
  @JsonValue('in_progress')
  inProgress,
  @JsonValue('waiting_for_correction')
  waitingForCorrection,
  @JsonValue('searching_a_group')
  searchingForGroup,
  @JsonValue('creating_group')
  creatingGroup,
  // ignore: constant_identifier_names
  _NOT_SUPPORTED,
}

@freezed
abstract class ProjectModel with _$ProjectModel {
  const factory ProjectModel({
    required int id,
    required String name,
    required String slug,
  }) = _ProjectModel;

  factory ProjectModel.fromJson(Map<String, Object?> json) =>
      _$ProjectModelFromJson(json);
}
