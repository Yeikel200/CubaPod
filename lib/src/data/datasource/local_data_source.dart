import 'dart:convert';

import 'package:cubapod/core/error/exception.dart';
import 'package:cubapod/src/data/models/category_type_model.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class LocalDataSource {
  Future<List<CategoryTypeModel>> getSelectedCategoryList();
  Future<bool> saveSelectedCategoryList({
    List<CategoryTypeModel> favoriteCategoriesList,
  });
  Future<bool> isCategoriesSelected();
  Future<bool> saveIsCategoriesSelected({bool selected});
}

const SP_SELECTED_CATEGORY_LIST = 'SELECTED_CATEGORY_LIST';
const SP_IS_CATEGORIES_SELECTED = 'IS_CATEGORIES_SELECTED';

class LocalDataSourceImpl extends LocalDataSource {
  final SharedPreferences sharedPreferences;

  LocalDataSourceImpl({@required this.sharedPreferences})
      : assert(sharedPreferences != null);

  @override
  Future<List<CategoryTypeModel>> getSelectedCategoryList() async {
    final jsonString =
        sharedPreferences.getStringList(SP_SELECTED_CATEGORY_LIST);
    if (jsonString != null) {
      final catalogList = jsonString.map((e) {
        return CategoryTypeModel.fromJson(json.decode(e));
      })?.toList();
      return catalogList;
    } else {
      throw CacheException();
    }
  }

  @override
  Future<bool> saveSelectedCategoryList({
    List<CategoryTypeModel> favoriteCategoriesList,
  }) {
    return sharedPreferences.setStringList(SP_SELECTED_CATEGORY_LIST,
        favoriteCategoriesList.map((e) => jsonEncode(e.toJson())).toList());
  }

  @override
  Future<bool> isCategoriesSelected() async {
    return sharedPreferences.getBool(SP_IS_CATEGORIES_SELECTED) ?? false;
  }

  @override
  Future<bool> saveIsCategoriesSelected({bool selected}) async {
    return sharedPreferences.setBool(SP_IS_CATEGORIES_SELECTED, selected);
  }
}
