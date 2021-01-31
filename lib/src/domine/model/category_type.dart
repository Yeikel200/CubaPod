import 'package:equatable/equatable.dart';

class CategoryType extends Equatable {
  const CategoryType({
    this.name,
    this.slug,
    this.description,
    this.img,
    this.color,
    this.podcastsCount,
  });

  final String name;
  final String slug;
  final String description;
  final String img;
  final String color;
  final int podcastsCount;

  @override
  List<Object> get props => [
        name,
        slug,
        description,
        img,
        color,
        podcastsCount,
      ];
}
