import 'package:flutter/material.dart';
import 'package:flutter_app/views/widgets/floor/floorview.dart';
import 'package:flutter_app/views/widgets/gridview/gridview_area.dart';
import 'package:flutter_app/views/widgets/gridview/gridview_shortcut.dart';
import 'package:flutter_app/views/widgets/search/search_page.dart';
import 'package:flutter_app/views/widgets/swiper/swiper_home.dart';


class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
      child: new Column(
      children: [
        new Container(
          height: 100,
          color: Colors.teal,
          child: new SearchView(),
        ),
        new Container(
          padding: EdgeInsets.all(10),
          child: new SwiperView()
        ),
//        new SearchView()
        new Container(
          height: 200,
          child: new ShortcutGridView()
        ),
        new Container(
          height: 200,
          child: new AreaGridView(),
        ),
        new Container(
          height: 300,
          color: Colors.white,
          child: new FloorGridView(),
        )
      ],
      )
    );
  }
}
