import 'package:blue_book/components/post_card.dart';
import 'package:flutter/material.dart';
import 'package:blue_book/components/my_drawer.dart';
import 'package:blue_book/pages/shopping_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // 网格的列数为2
        childAspectRatio: 0.6, //宽高比
      ),
      itemCount: 15,
      itemBuilder: (context, index) {
        return PostCard();
      },
    ),
    ShoppingPage(),
    Placeholder(),
    Placeholder(),
    Placeholder(),
    Placeholder(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        title: const Text(
          "B l u e B o o k",
          style: TextStyle(fontStyle: FontStyle.italic),
        ),
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          side: BorderSide(
            color: Colors.black12, // 边框颜色
            width: 0.4, // 边框宽度
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // 执行搜索操作
            },
            color: Colors.black, // 设置图标颜色
          ),
        ],
      ),
      drawer: const MyDrawer(),
      body: _pages[_selectedIndex],
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: _onItemTapped, // 使用 _onItemTapped 处理点击事件
        selectedIndex: _selectedIndex,
        destinations: [
          const NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: '主页',
          ),
          const NavigationDestination(
            selectedIcon: Icon(Icons.shopping_bag),
            icon: Icon(Icons.shopping_bag_outlined),
            label: '购物',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.add_box_rounded,
              color: Colors.cyan[600],
              size: 50,
            ),
            label: '发布',
          ),
          NavigationDestination(
            selectedIcon: const Icon(Icons.message),
            icon: Badge(
              backgroundColor: Colors.lightBlue[600],
              smallSize: 7,
              child: const Icon(Icons.message_outlined),
            ),
            label: '消息',
          ),
          const NavigationDestination(
            selectedIcon: Icon(Icons.person),
            icon: Icon(Icons.person_outline),
            label: '我的',
          ),
        ],
      ),
    );
  }
}
