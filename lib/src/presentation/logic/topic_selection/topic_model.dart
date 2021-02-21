part of 'topic_selection_provider.dart';

class TopicModel extends Equatable {
  final bool isSelected;
  final CategoryType categoryTypeModel;

  const TopicModel({this.isSelected = false, this.categoryTypeModel});

  TopicModel copyWith({bool isSelected, CategoryType model}) {
    return TopicModel(
      isSelected: isSelected ?? false,
      categoryTypeModel: model ?? this.categoryTypeModel,
    );
  }

  @override
  List<Object> get props => [isSelected, categoryTypeModel];
}
