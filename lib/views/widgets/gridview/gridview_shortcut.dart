// 首页快捷方式
import 'package:flutter/material.dart';

class ServiceItemViewModel {
  /// 图标
  String imageURL;
  /// 标题
  String title;

  ServiceItemViewModel(title, image) {
    this.title = title;
    this.imageURL = image;
  }
}

class ShortcutGridView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new ShortcutGridViewState();
  }
}

class ShortcutGridViewState extends State<ShortcutGridView> {
  List<ServiceItemViewModel> gridList = List();

  @override
  void initState() {
    // TODO: implement initState
    gridList
      ..add(ServiceItemViewModel('签到有礼', 'http://114.116.155.221:9999/DC843A5259846C618F65BAC0F3614F5C/image/apptab_1.png'
      ))
      ..add(ServiceItemViewModel('领券中心', 'http://114.116.155.221:9999/DC843A5259846C618F65BAC0F3614F5C/image/apptab_2.png'
      ))
      ..add(ServiceItemViewModel('为你精选', 'http://114.116.155.221:9999/DC843A5259846C618F65BAC0F3614F5C/image/apptab_1.png'
      ))
      ..add(ServiceItemViewModel('商学院', 'http://114.116.155.221:9999/DC843A5259846C618F65BAC0F3614F5C/image/apptab_1.png'
      ))
      ..add(ServiceItemViewModel('中华名方', 'http://114.116.155.221:9999/DC843A5259846C618F65BAC0F3614F5C/image/apptab_1.png'
      ))
      ..add(ServiceItemViewModel('一块购', 'http://114.116.155.221:9999/DC843A5259846C618F65BAC0F3614F5C/image/apptab_1.png'
      ))
      ..add(ServiceItemViewModel('诊所', 'http://114.116.155.221:9999/DC843A5259846C618F65BAC0F3614F5C/image/apptab_1.png'
      ))
      ..add(ServiceItemViewModel('控销专区', 'http://114.116.155.221:9999/DC843A5259846C618F65BAC0F3614F5C/image/apptab_1.png'
      ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
      crossAxisCount: 4,
      padding: EdgeInsets.all(5),
      physics: new NeverScrollableScrollPhysics(),
      children: gridList.map((item) => GridListItem(data: item)).toList(),
    );
  }
}


class GridListItem extends StatelessWidget {
  final ServiceItemViewModel data;

  GridListItem({Key key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(bottom: 4),
      child: Column(
        children: <Widget>[
          Image.network(
            this.data.imageURL,
            width: 60,
            height: 60,
          ),
          Text(
            this.data.title,
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}