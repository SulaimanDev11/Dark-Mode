import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: Theme.of(context).iconTheme,
        title: Text('HomeView'),
        centerTitle: true,
        leading: Icon(Icons.menu),
        actions: [
          Obx(
            () => Switch(
              value: controller.isDark.value,
              onChanged: (status) {
                controller.changeTheme(status);
              },
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'THIS IS HEADLINE 1',
              style:
                  Theme.of(context).textTheme.headline1!.copyWith(fontSize: 25),
            ),
            Text(
              'THIS IS HEADLINE 2',
              style:
                  Theme.of(context).textTheme.headline2!.copyWith(fontSize: 24),
            ),
            Text(
              'THIS IS HEADLINE 3',
              style:
                  Theme.of(context).textTheme.headline3!.copyWith(fontSize: 23),
            ),
            Text(
              'THIS IS HEADLINE 4',
              style:
                  Theme.of(context).textTheme.headline4!.copyWith(fontSize: 23),
            ),
            Text(
              'THIS IS HEADLINE 5',
              style:
                  Theme.of(context).textTheme.headline5!.copyWith(fontSize: 22),
            ),
            Text(
              'THIS IS HEADLINE 6',
              style:
                  Theme.of(context).textTheme.headline6!.copyWith(fontSize: 21),
            ),
            Icon(Icons.check)
          ],
        ),
      ),
    );
  }
}
