// 轮播
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'dart:convert';
import 'dart:io';

// http test
get() async {
  var httpClient = new HttpClient();
  var uri = new Uri.http(
      '114.116.149.145:9999', '/online');
  var request = await httpClient.getUrl(uri);
  var response = await request.close();

  var responseBody = await response.transform(utf8.decoder).join();
  print(responseBody);
}

class SwiperView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new SwiperViewState();
  }
}

class SwiperViewState extends State<SwiperView> {
  List<Widget> imageList = List();

  @override
  void initState() {
    // TODO: implement initState

    imageList..add(Image.network(
        'https://www.onekdrug.com:9999/DC843A5259846C618F65BAC0F3614F5C/image/ad_1.png',
        fit: BoxFit.fill
    ))..add(Image.network(
        'https://www.onekdrug.com:9999/DC843A5259846C618F65BAC0F3614F5C/image/ad_2.png',
        fit: BoxFit.fill
    ))..add(Image.network(
        'https://www.onekdrug.com:9999/DC843A5259846C618F65BAC0F3614F5C/image/ad_3.png',
        fit: BoxFit.fill
    ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return firstSwiperView();
  }

  Widget firstSwiperView() {
    return Container(
//        padding: const EdgeInsets.fromLTRB(0, 50, 0, 5),
      width: MediaQuery
          .of(context)
          .size
          .width,
      height: 180,
      child: Swiper(
        itemCount: 3,
        itemBuilder: _swiperBuilder,
        pagination: SwiperPagination(
            alignment: Alignment.bottomRight,
            margin: const EdgeInsets.fromLTRB(0, 0, 20, 10),
            builder: DotSwiperPaginationBuilder(
                color: Colors.black54,
                activeColor: Colors.white
            )
        ),
        controller: SwiperController(),
        scrollDirection: Axis.horizontal,
        autoplay: true,
        onTap: (index) => get(),
      ),

    );
  }

  Widget _swiperBuilder(BuildContext context, int index) {
    return (imageList[index]);
  }
}