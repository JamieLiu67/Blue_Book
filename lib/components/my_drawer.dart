import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          //logo
          const Gap(120),
          Column(
            children: [
              //加好友
              ListTile(
                title: const Text("发现好友"),
                leading: const Icon(Icons.person_add_alt),
                onTap: () {
                  //点击后执行的操作
                  Navigator.pop(context); //退出导航栏界面
                },
              ),
              const Gap(3),
              //创作中心
              ListTile(
                title: const Text("创作中心"),
                leading: const Icon(Icons.lightbulb_outline),
                onTap: () {
                  //点击后执行的操作
                  Navigator.pop(context); //退出导航栏界面
                },
              ),
              const Gap(3),
              ListTile(
                title: const Text("我的草稿"),
                leading: const Icon(Icons.drive_file_rename_outline_outlined),
                onTap: () {
                  //点击后执行的操作
                  Navigator.pop(context); //退出导航栏界面
                },
              ),
              const Gap(3),

              ListTile(
                title: const Text("浏览记录"),
                leading: const Icon(Icons.history),
                onTap: () {
                  //点击后执行的操作
                  Navigator.pop(context); //退出导航栏界面
                },
              ),
              const Gap(3),
              ListTile(
                title: const Text("订单"),
                leading: const Icon(Icons.local_offer_outlined),
                onTap: () {
                  //点击后执行的操作
                  Navigator.pop(context); //退出导航栏界面
                },
              ),
              const Gap(3),
              ListTile(
                title: const Text("购物车"),
                leading: const Icon(Icons.shopping_cart_checkout),
                onTap: () {
                  //点击后执行的操作
                  Navigator.pop(context); //退出导航栏界面
                },
              ),
              const Gap(3),
              ListTile(
                title: const Text("钱包"),
                leading: const Icon(Icons.account_balance_wallet_outlined),
                onTap: () {
                  //点击后执行的操作
                  Navigator.pop(context); //退出导航栏界面
                },
              ),
              const Gap(3),
              ListTile(
                title: const Text("社区公约"),
                leading: const Icon(Icons.groups),
                onTap: () {
                  //点击后执行的操作
                  Navigator.pop(context); //退出导航栏界面
                },
              ),
            ],
          ),

          const MaxGap(180),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  IconButton(
                    icon: const Icon(Icons.settings),
                    onPressed: () {
                      // 执行搜索操作
                      Navigator.pop(context);
                    },
                  ),
                  const Text("设置"),
                ],
              ),
              const Gap(10),
              Column(
                children: [
                  IconButton(
                    icon: Icon(Icons.help_outline_outlined),
                    onPressed: () {
                      // 执行搜索操作
                      Navigator.pop(context);
                    },
                  ),
                  const Text("联系客服"),
                ],
              ),
              const Gap(10),
              Column(
                children: [
                  IconButton(
                    icon: Icon(Icons.qr_code_scanner),
                    onPressed: () {
                      // 执行搜索操作
                      Navigator.pop(context);
                    },
                  ),
                  Text("扫一扫"),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
