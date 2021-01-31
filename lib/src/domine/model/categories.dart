import 'package:cubapod/src/domine/model/category_type.dart';
import 'package:equatable/equatable.dart';

class Categories extends Equatable {
  Categories({this.categories});

  final List<CategoryType> categories;

  @override
  // TODO: implement props
  List<Object> get props => [categories];
}
