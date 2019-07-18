
class ProductListEntity {
  String actCode;
  ActObj actObj;
  List<Product> list;
  Page page;

  ProductListEntity({this.actCode, this.actObj, this.list, this.page});

  ProductListEntity.fromJson(Map<String, dynamic> json) {
    actCode = json['actCode'];
    actObj =
    json['actObj'] != null ? new ActObj.fromJson(json['actObj']) : null;
    if (json['list'] != null) {
      list = new List<Product>();
      json['list'].forEach((v) {
        list.add(new Product.fromJson(v));
      });
    }
    page = json['page'] != null ? new Page.fromJson(json['page']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['actCode'] = this.actCode;
    if (this.actObj != null) {
      data['actObj'] = this.actObj.toJson();
    }
    if (this.list != null) {
      data['list'] = this.list.map((v) => v.toJson()).toList();
    }
    if (this.page != null) {
      data['page'] = this.page.toJson();
    }
    return data;
  }
}

class ActObj {
  int actcode;
  String sdate;
  String edate;
  String now;
  List<LadoffArray> ladoffArray;
  int currNums;

  ActObj(
      {this.actcode,
        this.sdate,
        this.edate,
        this.now,
        this.ladoffArray,
        this.currNums});

  ActObj.fromJson(Map<String, dynamic> json) {
    actcode = json['actcode'];
    sdate = json['sdate'];
    edate = json['edate'];
    now = json['now'];
    if (json['ladoffArray'] != null) {
      ladoffArray = new List<LadoffArray>();
      json['ladoffArray'].forEach((v) {
        ladoffArray.add(new LadoffArray.fromJson(v));
      });
    }
    currNums = json['currNums'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['actcode'] = this.actcode;
    data['sdate'] = this.sdate;
    data['edate'] = this.edate;
    data['now'] = this.now;
    if (this.ladoffArray != null) {
      data['ladoffArray'] = this.ladoffArray.map((v) => v.toJson()).toList();
    }
    data['currNums'] = this.currNums;
    return data;
  }
}

class LadoffArray {
  int ladamt;
  int ladnum;
  int offer;

  LadoffArray({this.ladamt, this.ladnum, this.offer});

  LadoffArray.fromJson(Map<String, dynamic> json) {
    ladamt = json['ladamt'];
    ladnum = json['ladnum'];
    offer = json['offer'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ladamt'] = this.ladamt;
    data['ladnum'] = this.ladnum;
    data['offer'] = this.offer;
    return data;
  }
}

class Product {
  String spu;
  String popname;
  String prodname;
  String standarNo;
  String brandNo;
  String brandName;
  String manuNo;
  String manuName;
  String sku;
  int vatp;
  int mp;
  int rrp;
  String vaildsdate;
  String vaildedate;
  String prodsdate;
  String prodedate;
  int store;
  int limits;
  int sales;
  int wholenum;
  int medpacknum;
  String spec;
  int cstatus;
  int unit;
  String unitName;
  String imageUrl;
  int skuCstatus;
  bool actprod;
  bool mutiact;
  int rulestatus;
  int startnum;
  int buynum;
  int actlimit;
  int actprize;
  int actinitstock;
  int surplusstock;
  int minprize;
  int maxprize;
  int cart;
  int consell;
  int grossProfit;

  Product(
      {this.spu,
        this.popname,
        this.prodname,
        this.standarNo,
        this.brandNo,
        this.brandName,
        this.manuNo,
        this.manuName,
        this.sku,
        this.vatp,
        this.mp,
        this.rrp,
        this.vaildsdate,
        this.vaildedate,
        this.prodsdate,
        this.prodedate,
        this.store,
        this.limits,
        this.sales,
        this.wholenum,
        this.medpacknum,
        this.spec,
        this.cstatus,
        this.unit,
        this.unitName,
        this.imageUrl,
        this.skuCstatus,
        this.actprod,
        this.mutiact,
        this.rulestatus,
        this.startnum,
        this.buynum,
        this.actlimit,
        this.actprize,
        this.actinitstock,
        this.surplusstock,
        this.minprize,
        this.maxprize,
        this.cart,
        this.consell,
        this.grossProfit});

  Product.fromJson(Map<String, dynamic> json) {
    spu = json['spu'];
    popname = json['popname'];
    prodname = json['prodname'];
    standarNo = json['standarNo'];
    brandNo = json['brandNo'];
    brandName = json['brandName'];
    manuNo = json['manuNo'];
    manuName = json['manuName'];
    sku = json['sku'];
    vatp = json['vatp'];
    mp = json['mp'];
    rrp = json['rrp'];
    vaildsdate = json['vaildsdate'];
    vaildedate = json['vaildedate'];
    prodsdate = json['prodsdate'];
    prodedate = json['prodedate'];
    store = json['store'];
    limits = json['limits'];
    sales = json['sales'];
    wholenum = json['wholenum'];
    medpacknum = json['medpacknum'];
    spec = json['spec'];
    cstatus = json['cstatus'];
    unit = json['unit'];
    unitName = json['unitName'];
    imageUrl = json['imageUrl'];
    skuCstatus = json['skuCstatus'];
    actprod = json['actprod'];
    mutiact = json['mutiact'];
    rulestatus = json['rulestatus'];
    startnum = json['startnum'];
    buynum = json['buynum'];
    actlimit = json['actlimit'];
    actprize = json['actprize'];
    actinitstock = json['actinitstock'];
    surplusstock = json['surplusstock'];
    minprize = json['minprize'];
    maxprize = json['maxprize'];
    cart = json['cart'];
    consell = json['consell'];
    grossProfit = json['grossProfit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['spu'] = this.spu;
    data['popname'] = this.popname;
    data['prodname'] = this.prodname;
    data['standarNo'] = this.standarNo;
    data['brandNo'] = this.brandNo;
    data['brandName'] = this.brandName;
    data['manuNo'] = this.manuNo;
    data['manuName'] = this.manuName;
    data['sku'] = this.sku;
    data['vatp'] = this.vatp;
    data['mp'] = this.mp;
    data['rrp'] = this.rrp;
    data['vaildsdate'] = this.vaildsdate;
    data['vaildedate'] = this.vaildedate;
    data['prodsdate'] = this.prodsdate;
    data['prodedate'] = this.prodedate;
    data['store'] = this.store;
    data['limits'] = this.limits;
    data['sales'] = this.sales;
    data['wholenum'] = this.wholenum;
    data['medpacknum'] = this.medpacknum;
    data['spec'] = this.spec;
    data['cstatus'] = this.cstatus;
    data['unit'] = this.unit;
    data['unitName'] = this.unitName;
    data['imageUrl'] = this.imageUrl;
    data['skuCstatus'] = this.skuCstatus;
    data['actprod'] = this.actprod;
    data['mutiact'] = this.mutiact;
    data['rulestatus'] = this.rulestatus;
    data['startnum'] = this.startnum;
    data['buynum'] = this.buynum;
    data['actlimit'] = this.actlimit;
    data['actprize'] = this.actprize;
    data['actinitstock'] = this.actinitstock;
    data['surplusstock'] = this.surplusstock;
    data['minprize'] = this.minprize;
    data['maxprize'] = this.maxprize;
    data['cart'] = this.cart;
    data['consell'] = this.consell;
    data['grossProfit'] = this.grossProfit;
    return data;
  }
}

class Page {
  Value value;

  Page({this.value});

  Page.fromJson(Map<String, dynamic> json) {
    value = json['value'] != null ? new Value.fromJson(json['value']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.value != null) {
      data['value'] = this.value.toJson();
    }
    return data;
  }
}

class Value {
  int pageSize;
  int pageIndex;
  int totalItems;
  int totalPageCount;

  Value({this.pageSize, this.pageIndex, this.totalItems, this.totalPageCount});

  Value.fromJson(Map<String, dynamic> json) {
    pageSize = json['pageSize'];
    pageIndex = json['pageIndex'];
    totalItems = json['totalItems'];
    totalPageCount = json['totalPageCount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['pageSize'] = this.pageSize;
    data['pageIndex'] = this.pageIndex;
    data['totalItems'] = this.totalItems;
    data['totalPageCount'] = this.totalPageCount;
    return data;
  }
}