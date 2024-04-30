import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:blue_book/components/post_card.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    void _onButtonPressed() {
      print('object');
    }

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Gap(10),
            Row(
              children: <Widget>[
                Row(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(
                          'https://avatars.githubusercontent.com/u/1023456789?v=4'),
                    ),
                    Gap(15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '用户名',
                          style: TextStyle(fontSize: 20),
                        ),
                        Gap(10),
                        Text(
                          '小蓝书ID: 123456789',
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
            Gap(10),
            Row(
              children: [
                Gap(5),
                Text('简介：我到河北省来'),
              ],
            ),
            Gap(10),
            Row(
              children: [
                Gap(5),
                Column(
                  children: [
                    Text(
                      '20',
                      style: TextStyle(fontSize: 16),
                    ),
                    // Gap(3),
                    Text(
                      '关注',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
                Gap(15),
                Column(
                  children: [
                    Text(
                      '6',
                      style: TextStyle(fontSize: 16),
                    ),
                    // Gap(3),
                    Text(
                      '粉丝',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
                Gap(15),
                Column(
                  children: [
                    Text(
                      '6',
                      style: TextStyle(fontSize: 16),
                    ),
                    // Gap(3),
                    Text(
                      '赞与收藏',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
            Gap(10),
            Row(
              children: [
                //3个半透明按钮
              ],
            ),
            Gap(20),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // 网格的列数
                  childAspectRatio: 0.6, // 子Widget的宽高比
                ),
                itemCount: 15, // 总共有35个卡片
                itemBuilder: (context, index) {
                  return PostCard(); // 为每个卡片创建一个ChatCard
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// // Adapted from offical flutter gallery:
// // https://github.com/flutter/flutter/blob/master/examples/flutter_gallery/lib/demo/material/bottom_app_bar_demo.dart
// class ProfilePage extends StatefulWidget {
//   const ProfilePage({super.key});

//   @override
//   State<StatefulWidget> createState() => _ProfilePageState();
// }

// class _ProfilePageState extends State<ProfilePage> {
//   bool _pinned = true;
//   bool _snap = false;
//   bool _floating = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: CustomScrollView(
//         slivers: <Widget>[
//           SliverAppBar(
//             pinned: this._pinned,
//             snap: this._snap,
//             floating: this._floating,
//             expandedHeight: 160.0,
//             flexibleSpace: FlexibleSpaceBar(
//               title: const Text(
//                 "FlexibleSpace title",
//                 style: TextStyle(color: Colors.black),
//               ),
//               background: Container(
//                 alignment: Alignment.centerLeft, // 根据需要调整对齐方式
//                 child: CircleAvatar(
//                   radius: 30, // 根据FlexibleSpaceBar的大小调整半径
//                   backgroundImage: NetworkImage(
//                       'https://avatars.githubusercontent.com/u/1023456789?v=4'), // 替换为你的头像图片路径
//                 ),
//               ),
//             ),
//           ),
//           // If the main content is a list, use SliverList instead.
//           const SliverFillRemaining(
//             child: Center(child: Text("Hello")),
//           ),
//         ],
//       ),
//       bottomNavigationBar: this._getBottomAppBar(),
//     );
//   }

//   Widget _getBottomAppBar() {
//     return BottomAppBar(
//       child: ButtonBar(
//         alignment: MainAxisAlignment.spaceEvenly,
//         children: <Widget>[
//           Row(
//             children: <Widget>[
//               const Text('pinned'),
//               Switch(
//                 onChanged: (bool val) {
//                   setState(() {
//                     this._pinned = val;
//                   });
//                 },
//                 value: this._pinned,
//               ),
//             ],
//           ),
//           Row(
//             children: <Widget>[
//               const Text('snap'),
//               Switch(
//                 onChanged: (bool val) {
//                   setState(() {
//                     this._snap = val;
//                     // **Snapping only applies when the app bar is floating.**
//                     this._floating = this._floating || val;
//                   });
//                 },
//                 value: this._snap,
//               ),
//             ],
//           ),
//           Row(
//             children: <Widget>[
//               const Text('floating'),
//               Switch(
//                 onChanged: (bool val) {
//                   setState(() {
//                     this._floating = val;
//                     if (this._snap == true) {
//                       if (this._floating != true) {
//                         this._snap = false;
//                       }
//                     }
//                   });
//                 },
//                 value: this._floating,
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
