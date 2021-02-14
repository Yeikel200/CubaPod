import 'package:cubapod/core/error/exception.dart';
import 'package:cubapod/src/data/datasource/local_data_source.dart';
import 'package:cubapod/src/data/models/category_type_model.dart';
import 'package:cubapod/src/domine/usecase/get_categories_list_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class TopicsState extends Equatable {
  const TopicsState();
}

class InitialTopicsState extends TopicsState {
  const InitialTopicsState();
  @override
  List<Object> get props => [];
}

class LoadingTopicsState extends TopicsState {
  const LoadingTopicsState();
  @override
  List<Object> get props => [];
}

class LoadedTopicsState extends TopicsState {
  LoadedTopicsState({this.topicsList});

  final List<TopicModel> topicsList;
  @override
  List<Object> get props => [topicsList];
}

class ErrorTopicsState extends TopicsState {
  const ErrorTopicsState(this.message);
  final String message;
  @override
  List<Object> get props => [];
}

class TopicsNotifier extends StateNotifier<TopicsState> {
  TopicsNotifier({
    @required GetCategoriesListUsecase getCategoriesListUsecase,
    @required LocalDataSource localDataSource,
  })  : _getCategoriesListUsecase = getCategoriesListUsecase,
        _localDataSource = localDataSource,
        assert(getCategoriesListUsecase != null),
        assert(localDataSource != null),
        super(InitialTopicsState());

  final GetCategoriesListUsecase _getCategoriesListUsecase;
  final LocalDataSource _localDataSource;

  List<TopicModel> categoryList = <TopicModel>[];

  Future<void> getCategoryList() async {
    try {
      state = LoadingTopicsState();
      final list = await _getCategoriesListUsecase();
      categoryList = list.map((c) => TopicModel(categoryTypeModel: c)).toList();
      state = LoadedTopicsState(topicsList: categoryList);
    } on StatusRequestFailure catch (_) {
      state = ErrorTopicsState(
          'No pudimos optener las Categorias, estás conectado ?');
    }
  }

  void addSelectCategory(TopicModel categoryTypeModel) {
    for (int i = 0; i < categoryList.length; i++) {
      if (categoryList[i] == categoryTypeModel) {
        categoryList[i] = categoryList[i].copyWith(
          isSelected: !categoryTypeModel.isSelected,
        );
        state = LoadedTopicsState(topicsList: categoryList);
        return;
      }
    }
  }

  void saveListLocally() {
    final list = categoryList
        .where((m) => m.isSelected)
        .map((e) => e.categoryTypeModel)
        .toList();
    _localDataSource.saveSelectedCategoryList(favoriteCategoriesList: list);
  }
}

class TopicModel extends Equatable {
  final bool isSelected;
  final CategoryTypeModel categoryTypeModel;

  const TopicModel({this.isSelected = false, this.categoryTypeModel});

  TopicModel copyWith({bool isSelected, CategoryTypeModel model}) {
    return TopicModel(
      isSelected: isSelected ?? false,
      categoryTypeModel: model ?? this.categoryTypeModel,
    );
  }

  @override
  List<Object> get props => [isSelected, categoryTypeModel];
}
