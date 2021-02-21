part of 'topic_selection_provider.dart';

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
