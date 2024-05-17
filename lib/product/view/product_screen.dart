import 'package:flutter/material.dart';
import 'package:flutter_actual/common/component/pagination_list_view.dart';
import 'package:flutter_actual/product/component/product_card.dart';
import 'package:flutter_actual/product/model/product_model.dart';
import 'package:flutter_actual/product/provider/product_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProductScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PaginationListView<ProductModel>(
      provider: productProvider,
      itemBuilder: <ProductModel>(_, index, model) {
        return ProductCard.fromProductModel(
          model: model,
        );
      },
    );
  }
}
