import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:swifty_companion/domain/models/cursus_user_model.dart';

part 'profile_model.freezed.dart';
part 'profile_model.g.dart';

@freezed
abstract class ProfileModel with _$ProfileModel {
  @JsonSerializable(explicitToJson: true)
  const factory ProfileModel({
    required String login,
    required ProfileImageModel image,
    @JsonKey(name: 'cursus_users') required List<CursusUserModel> cursusUsers,
    required int wallet,
    @JsonKey(name: 'correction_point') required int correctionPoint,
  }) = _ProfileModel;

  factory ProfileModel.fromJson(Map<String, Object?> json) =>
      _$ProfileModelFromJson(json);
}

@freezed
abstract class ProfileImageModel with _$ProfileImageModel {
  @JsonSerializable(explicitToJson: true)
  const factory ProfileImageModel({required String link}) = _ProfileImageModel;

  factory ProfileImageModel.fromJson(Map<String, Object?> json) =>
      _$ProfileImageModelFromJson(json);
}
