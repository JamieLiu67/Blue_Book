import 'package:flutter/material.dart';
import 'package:blue_book/components/chat_card.dart';
import 'package:gap/gap.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    // 定义一个Row小部件，它将作为GridView的头部
    final Row headerRow = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Column(
          children: [
            CircleAvatar(
              backgroundColor: Colors.red[50],
              radius: 27, //半径
              child: Icon(
                Icons.favorite,
                color: Colors.red,
                size: 28,
              ), // 头像中的图标
            ),
            Gap(5),
            Text('赞和收藏',
                style: TextStyle(
                  fontSize: 14,
                )),
          ],
        ),
        Column(
          children: [
            CircleAvatar(
              backgroundColor: Colors.blue[50],
              radius: 27, //半径
              child: Icon(
                Icons.plus_one,
                color: Colors.blue,
                size: 28,
              ), // 头像中的图标
            ),
            Gap(5),
            Text('新增关注',
                style: TextStyle(
                  fontSize: 14,
                )),
          ],
        ),
        Column(
          children: [
            CircleAvatar(
              backgroundColor: Colors.green[50],
              radius: 27, //半径
              child: Icon(
                Icons.message_outlined,
                color: Colors.green,
                size: 28,
              ), // 头像中的图标
            ),
            Gap(5),
            Text('与我有关',
                style: TextStyle(
                  fontSize: 14,
                )),
          ],
        ),
        // 可以添加更多的Widget
      ],
    );

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Column(
          // 将headerRow作为Column的第一个子小部件
          children: <Widget>[
            Gap(10),
            headerRow,
            Gap(15),
            // 使用Expanded确保GridView填充剩余空间
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1, // 网格的列数
                  childAspectRatio: 5, // 子Widget的宽高比
                ),
                itemCount: 10, // 总共有35个卡片
                itemBuilder: (context, index) {
                  return const ChatCard(); // 为每个卡片创建一个ChatCard
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
