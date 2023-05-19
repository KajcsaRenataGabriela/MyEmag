part of 'index.dart';

class CategoriesContainer extends StatelessWidget {
  const CategoriesContainer({super.key, required this.builder});

  final ViewModelBuilder<List<Category>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<ProductsState, List<Category>>(
      converter: (Store<ProductsState> store) => store.state.categories,
      builder: builder,
    );
  }
}
