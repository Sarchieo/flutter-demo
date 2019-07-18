import 'package:flutter/material.dart';
import 'package:flutter_app/bean/product_entity.dart';
import 'dart:convert' show json;

import 'package:flutter_app/views/widgets/gridview/gridview_shortcut.dart';

class FloorGridView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new FloorGridViewState();
  }
}

class FloorGridViewState extends State<FloorGridView> {
  ProductListEntity productListEntity;
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
    _getData();
  }

  _getData() async {
    var json = {"actCode":"34498087443497984","actObj":{"actcode":34498087443497984,"sdate":"00:00:00","edate":"23:59:59","now":"2019-07-17 17:55:13","ladoffArray":[{"ladamt":0,"ladnum":100,"offer":9}],"currNums":0},"list":[{"spu":"110000000112","popname":"三九/999 感冒灵颗粒","prodname":"三九/999 感冒灵颗粒","standarNo":"国药准字Z44021940","brandNo":"3853312138937344","brandName":"三九/999","manuNo":"3853591253091328","manuName":"华润三九医药股份有限公司委托惠州市九惠制药股份有限公司","sku":"11000000011201","vatp":60,"mp":70,"rrp":60,"vaildsdate":"2019-04-22","vaildedate":"2019-04-30","prodsdate":"2019-04-22","prodedate":"2019-04-30","store":47891,"limits":5,"sales":883,"wholenum":1,"medpacknum":1,"spec":"10g*9袋*6件","cstatus":0,"unit":67,"unitName":"袋","imageUrl":"http://114.116.149.145:9999/112/110000000112/448/11000000011201/212075EAD0C4ECEB3D1AE29839206C58/11000000011201-200x200.jpg","skuCstatus":0,"actprod":false,"mutiact":false,"rulestatus":4096,"startnum":1,"buynum":1,"actlimit":1,"actprize":540,"actinitstock":1,"surplusstock":0,"minprize":0,"maxprize":0,"cart":0,"consell":0,"grossProfit":0},{"spu":"110000000012","popname":"左洛复/Zoloft 盐酸舍曲林片","prodname":"左洛复/Zoloft 盐酸舍曲林片 50mg*14片","standarNo":"国药准字H10980141","brandNo":"9027768939447296","brandName":"左洛复","manuNo":"3853591253091328","manuName":"华润三九医药股份有限公司委托惠州市九惠制药股份有限公司","sku":"11000000001201","vatp":75,"mp":70,"rrp":80,"vaildsdate":"2019-04-22","vaildedate":"2019-04-30","prodsdate":"2019-04-22","prodedate":"2019-04-30","store":355,"limits":0,"sales":29,"wholenum":5,"medpacknum":5,"spec":"50mg*14片","cstatus":0,"unit":20,"unitName":"盒","imageUrl":"http://114.116.149.145:9999/12/110000000012/176/11000000001201/212075EAD0C4ECEB3D1AE29839206C58/11000000001201-200x200.jpg","skuCstatus":0,"actprod":false,"mutiact":false,"rulestatus":6144,"startnum":5,"buynum":0,"actlimit":1,"actprize":675,"actinitstock":1,"surplusstock":1,"minprize":0,"maxprize":0,"cart":0,"consell":0,"grossProfit":6},{"spu":"110000000014","popname":"黄道益","prodname":"黄道益活络油","standarNo":"国药准字Z123456","brandNo":"4184365596673024","brandName":"珍视明","manuNo":"1744383644795904","manuName":"天津制药","sku":"11000000001401","vatp":123,"mp":100,"rrp":100,"vaildsdate":"2019-04-20","vaildedate":"2019-04-26","prodsdate":"2019-04-15","prodedate":"2019-04-17","store":49,"limits":1,"sales":3,"wholenum":1,"medpacknum":1,"spec":"10G/瓶","cstatus":0,"unit":21,"unitName":"瓶","imageUrl":"http://114.116.149.145:9999/14/110000000014/368/11000000001401/212075EAD0C4ECEB3D1AE29839206C58/11000000001401-200x200.jpg","skuCstatus":0,"actprod":false,"mutiact":false,"rulestatus":4096,"startnum":1,"buynum":1,"actlimit":1,"actprize":1107,"actinitstock":1,"surplusstock":0,"minprize":0,"maxprize":0,"cart":0,"consell":0,"grossProfit":-23},{"spu":"110020100040","popname":"滴眼液","prodname":"珍视明滴眼液","standarNo":"国药准字Z44023485","brandNo":"4184365596673024","brandName":"珍视明","manuNo":"6813405012820992","manuName":"云南白药集团股份有限公司","sku":"11002010004001","vatp":11.5,"mp":12,"rrp":12,"vaildsdate":"2019-04-01","vaildedate":"2019-05-31","prodsdate":"2019-04-01","prodedate":"2019-04-01","store":48,"limits":10,"sales":3,"wholenum":1,"medpacknum":1,"spec":"1盒每只","cstatus":0,"unit":21,"unitName":"瓶","imageUrl":"http://114.116.149.145:9999/40/110020100040/32/11002010004001/212075EAD0C4ECEB3D1AE29839206C58/11002010004001-200x200.jpg","skuCstatus":0,"actprod":false,"mutiact":false,"rulestatus":4096,"startnum":1,"buynum":1,"actlimit":1,"actprize":103.5,"actinitstock":1,"surplusstock":0,"minprize":0,"maxprize":0,"cart":0,"consell":0,"grossProfit":4},{"spu":"110000000110","popname":"LF/老方 红金消结胶囊","prodname":"LF/老方 红金消结胶囊","standarNo":"国药准字Z20026032","brandNo":"9283351051502592","brandName":"老方","manuNo":"3845517817676800","manuName":"正大天晴药业集团股份有限公司","sku":"11000000011001","vatp":40,"mp":50,"rrp":45,"vaildsdate":"2020-04-30","vaildedate":"2027-03-22","prodsdate":"2019-04-23","prodedate":"2020-04-30","store":40,"limits":0,"sales":16,"wholenum":1,"medpacknum":1,"spec":"0.4g*36粒","cstatus":0,"unit":20,"unitName":"盒","imageUrl":"http://114.116.149.145:9999/110/110000000110/240/11000000011001/212075EAD0C4ECEB3D1AE29839206C58/11000000011001-200x200.jpg","skuCstatus":0,"actprod":false,"mutiact":false,"rulestatus":4096,"startnum":1,"buynum":1,"actlimit":1,"actprize":360,"actinitstock":1,"surplusstock":0,"minprize":0,"maxprize":0,"cart":0,"consell":0,"grossProfit":11}],"page":{"value":{"pageSize":5,"pageIndex":1,"totalItems":8,"totalPageCount":2}}};
    productListEntity = ProductListEntity.fromJson(json);
    print(productListEntity);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
      crossAxisCount: 2,
      padding: EdgeInsets.all(5),
      physics: new NeverScrollableScrollPhysics(),
      children: gridList.map((item) => GridListItem(data: item)).toList()
    );
  }
}

class FloorGridViewItem extends StatelessWidget {
  final Product data;
  FloorGridViewItem({Key key, this.data}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(5),
      child: Row(
        children: <Widget>[
          Image.network(
            this.data.imageUrl
          )
        ],
      ),
    );
  }
}