import 'package:blue_book/components/shop_card.dart';
import 'package:flutter/material.dart';

class ShoppingPage extends StatelessWidget {
  const ShoppingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // 网格的列数为2
        childAspectRatio: 0.6, // 子部件的宽高比为065
      ),
      itemCount: 15, // 总共有10个卡片
      itemBuilder: (context, index) {
        return const Shop_Card();
      },
    );
  }
}
