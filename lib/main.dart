import 'package:flutter/material.dart';
import 'package:flutter_app/views/FirstPage.dart';
import 'package:flutter_app/views/FourPage.dart';
import 'package:flutter_app/views/Second.dart';
import 'package:flutter_app/views/ThirdPage.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: '一块医药',
      home: MyHomePage()
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = new TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      // viewpage
      body: new TabBarView(controller: controller ,children: <Widget> [
        new FirstPage(),
        new SecondPage(),
        new ThirdPage(),
        new FourPage()
      ]),
      bottomNavigationBar: new Material(
        color: Colors.blue,
        child: new TabBar(
          controller: controller,
          tabs: <Tab>[
            new Tab(text: "首页", icon: new Icon(Icons.home)),
            new Tab(text: "分类", icon: new Icon(Icons.list)),
            new Tab(text: "采购单", icon: new Icon(Icons.add_shopping_cart)),
            new Tab(text: "我的", icon: new Icon(Icons.account_circle))
          ],
          indicatorWeight: 0.1,
        ),
      )
    );
  }
}


