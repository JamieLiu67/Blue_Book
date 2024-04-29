import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class PostCard extends StatelessWidget {
  const PostCard({super.key});

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
            Placeholder(
              fallbackWidth: 100,
              fallbackHeight: 225, // 可以根据需要调整高度
            ),
            MaxGap(5),
            const Text('一段看不懂的非主流标题'),
            MaxGap(5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // 头像和用户名
                const Row(
                  children: [
                    CircleAvatar(
                      radius: 12, //半径
                      child: Placeholder(
                        fallbackWidth: 24,
                        fallbackHeight: 24, // 可以根据需要调整高度
                      ),
                    ),
                    Gap(5),
                    Text('用户名'),
                  ],
                ),

                // Text('发布时间'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    // 点赞按钮
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.favorite_border)),
                    const Text(
                      '7',
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
