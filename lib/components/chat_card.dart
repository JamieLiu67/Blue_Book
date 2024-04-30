import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ChatCard extends StatelessWidget {
  const ChatCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(
          10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // 头像和用户名
            const Row(
              children: [
                CircleAvatar(
                  radius: 18, //半径
                  backgroundImage: NetworkImage(
                      'https://avatars.githubusercontent.com/u/1023456789?v=4'),
                ),
                Gap(8),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      '用户名',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
                    ),
                    Text(
                      '今天在线',
                      style: TextStyle(fontSize: 12, color: Colors.black38),
                    ),
                  ],
                ),
              ],
            ),

            // Text('发布时间'),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text(
                  '3-15',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
