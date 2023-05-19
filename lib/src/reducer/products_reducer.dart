import 'package:redux/redux.dart';

import '../actions/index.dart';
import '../models/index.dart';

Reducer<ProductsState> productReducer = combineReducers(<Reducer<ProductsState>>[
  TypedReducer<ProductsState, ListCategorySuccessful>(_listCategorySuccessful).call,
  TypedReducer<ProductsState, SetCategory>(_setCategory).call,
  TypedReducer<ProductsState, ListProductsSuccessful>(_listProductsSuccessful).call,
]);

ProductsState _listCategorySuccessful(ProductsState state, ListCategorySuccessful action) {
  return state.copyWith(categories: action.categories, selectedCategoryId: action.categories.first.id);
}

ProductsState _setCategory(ProductsState state, SetCategory action) {
  return state.copyWith(selectedCategoryId: action.categoryId);
}

ProductsState _listProductsSuccessful(ProductsState state, ListProductsSuccessful action) {
  return state.copyWith(products: action.products);
}
