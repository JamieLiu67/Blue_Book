import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Shop_Card extends StatelessWidget {
  const Shop_Card({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(
          6,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 图片使用 Placeholder 作为占位符
            const Placeholder(
              fallbackWidth: 100,
              fallbackHeight: 250,
            ),
            MaxGap(5),
            Text('商品名'),
            MaxGap(5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // 价格
                const Row(
                  children: [
                    Text('￥128'),
                  ],
                ),

                // 多少人已购买
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '78人已购买',
                      style: TextStyle(fontSize: 12, color: Colors.grey[500]),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
