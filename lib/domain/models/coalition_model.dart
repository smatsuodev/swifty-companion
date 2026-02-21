import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'coalition_model.freezed.dart';
part 'coalition_model.g.dart';

class CoalitionWithCursusSlugModel {
  final CoalitionModel coalition;
  final String cursusSlug;

  CoalitionWithCursusSlugModel({
    required this.coalition,
    required this.cursusSlug,
  });
}

@JsonSerializable(explicitToJson: true)
class CoalitionModelList {
  final List<CoalitionModel> coalitions;

  CoalitionModelList({required this.coalitions});

  factory CoalitionModelList.fromJson(List<dynamic> json) =>
      _$CoalitionModelListFromJson({'coalitions': json});
}

@freezed
abstract class CoalitionModel with _$CoalitionModel {
  @JsonSerializable(explicitToJson: true)
  const factory CoalitionModel({
    required int id,
    required String name,
    required String slug,
    @ColorFromHexConverter() required Color color,
    @JsonKey(name: 'user_id') required int userId,
    @JsonKey(name: 'image_url') required String imageUrl,
  }) = _CoalitionModel;

  factory CoalitionModel.fromJson(Map<String, Object?> json) =>
      _$CoalitionModelFromJson(json);
}

class ColorFromHexConverter extends JsonConverter<Color, String> {
  const ColorFromHexConverter();

  @override
  Color fromJson(String json) {
    final hexColor = json.replaceAll('#', '');
    return Color(int.parse('FF$hexColor', radix: 16));
  }

  @override
  String toJson(Color color) {
    return '#${color.toARGB32().toRadixString(16).substring(2).toUpperCase()}';
  }
}
