
import 'package:flutter/material.dart';

class AreaGridItemViewModel {
  String imageURL;
  String name;

  AreaGridItemViewModel(name, image) {
    this. name = name;
    this.imageURL = image;
  }
}

class AreaGridView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new AreaGridViewState();
  }
}

class AreaGridViewState extends State<AreaGridView> {
  List<AreaGridItemViewModel> areaList = List();

  @override
  void initState() {
    // TODO: implement initState
    areaList
      ..add(AreaGridItemViewModel(
        '超值套餐',
        'http://114.116.155.221:9999/DC843A5259846C618F65BAC0F3614F5C/image/sp_1.png',
      ))
      ..add(AreaGridItemViewModel(
        '满减专区',
        'http://114.116.155.221:9999/DC843A5259846C618F65BAC0F3614F5C/image/sp_2.png',
      ))
      ..add(AreaGridItemViewModel(
        '品牌专区',
        'http://114.116.155.221:9999/DC843A5259846C618F65BAC0F3614F5C/image/sp_3.png',
      ))
      ..add(AreaGridItemViewModel(
        '热销专区',
        'http://114.116.155.221:9999/DC843A5259846C618F65BAC0F3614F5C/image/sp_4.png',
      ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 10.0,
      padding: EdgeInsets.all(5),
      mainAxisSpacing: 5.0,
      childAspectRatio: 2.0,
      physics: new NeverScrollableScrollPhysics(),
      children: areaList.map((item) => GridListItem(data: item)).toList()
    );
  }
}

class GridListItem extends StatelessWidget {
  final AreaGridItemViewModel data;

  GridListItem({Key key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: <Widget>[
          Image.network(
            this.data.imageURL
          )
        ],
      ),
    );
  }
}