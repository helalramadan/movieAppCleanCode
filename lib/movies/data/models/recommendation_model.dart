import 'package:movies_app/movies/domain/entities/recommendations.dart';

class RecommendationModel extends Recommendations {
  const RecommendationModel({super.backdropPath, required super.id});

  factory RecommendationModel.fromJson(Map<String, dynamic> json) =>
      RecommendationModel(
        backdropPath: json['backdrop_path'] ?? "",
        id: json['id'],
      );
}
