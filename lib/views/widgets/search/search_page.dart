
// 搜索
import 'package:flutter/material.dart';

class SearchView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new SearchViewState();
  }
}

class SearchViewState extends State<SearchView> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: TextFileView(),
        backgroundColor: Colors.red,
        automaticallyImplyLeading: false,
        actions: <Widget>[
        ],
      ),
    );
  }
}

// 搜索控件
class TextFileView extends StatelessWidget {
  Widget buildTextField() {
    return TextField(
        cursorColor: Colors.white,
        decoration: InputDecoration(
            contentPadding: new EdgeInsets.only(left: 8),
            border: InputBorder.none,
            icon: new Icon(Icons.youtube_searched_for),
            hintText: "请根据商品名称搜索",
            hintStyle: new TextStyle(fontSize: 14, color: Colors.grey)),
        style: new TextStyle(fontSize: 14, color: Colors.black)
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Widget editView() {
      return Container(
        decoration: new BoxDecoration(
            border: Border.all(color: Colors.white, width: 1.0),
            color: Colors.white,
            borderRadius: new BorderRadius.all(new Radius.circular(15))
        ),
        alignment: Alignment.center,
        height: 36,
        padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
        child: buildTextField(),
      );
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: editView(),
          flex: 1,
        ),
      ],
    );
  }
}