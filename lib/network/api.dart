import 'package:topsports/instances.dart';
import 'package:topsports/network/interpreter.dart';
import '../models/commodity_list_entity.dart';
import '../models/good_detail_entity.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../top_encrypt.dart';
import 'package:dio/dio.dart';
import 'package:dio/adapter.dart';
import 'loading.dart';

enum FilterType {
  salesNum, // sale num
  upShelfTime, // up shelf time
  asc, //default
}

String searchLink({
  String key = '',
  int page = 1,
  int pageSize = 20,
  shopNo = '',
  FilterType filterType = FilterType.upShelfTime,
}) {
  String sign = encryptedSign('/search/shopCommodity/list');
  String link =
      '/search/shopCommodity/list?searchKeyword=$key&current=$page&pageSize=$pageSize&sortColumn=${filterType.name}&sortType=desc&filterIds=NK01%2Cc1001&shopNo=$shopNo&tssign=$sign';
  return link;
}

String detailLink(String commodityId) {
  return encryptedLink('/shopCommodity/queryShopCommodityDetail/$commodityId');
}

String get addCartLink => encryptedLink('/shoppingcart/new/add');

class Http {
  static String baseUrl = 'https://wxmall.topsports.com.cn';
  static const int connectTimeout = 5000;
  static const int receiveTimeout = 5000;
  static const int sendTimeout = 2000;
  static Map<String, dynamic> headers = {
    'Authorization': '',
    'Content-Type': 'application/json',
    'Accept-Language': 'zh-cn',
    'Accept-Encoding': 'gzip, deflate, br',
    'Accept': '*/*',
    'appId': 'wx71a6af1f91734f18',
    'Connection': 'keep-alive',
    'User-Agent':
        'Mozilla/5.0 (iPhone; CPU iPhone OS 11_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E217 MicroMessenger/6.8.0(0x16080000) NetType/WIFI Language/en Branch/Br_trunk MiniProgramEnv/Mac'
  };

  Dio? dio;
  static final CancelToken _cancelToken = CancelToken();
  static Http dioInstance = Http._interval();

  Http._interval() {
    dio = Dio();
    final BaseOptions options = BaseOptions(
      connectTimeout: connectTimeout,
      receiveTimeout: receiveTimeout,
      sendTimeout: sendTimeout,
      headers: headers,
      baseUrl: baseUrl,
    );
    dio?.options = options;
    dio?.interceptors.add(DioInterceptor());
    dio?.httpClientAdapter = DefaultHttpClientAdapter();
  }

  void cancelRequest([String? reason]) {
    _cancelToken.cancel(reason);
  }

  Future<Map<String, dynamic>> get(String path) async {
    Response response =
        await apiWrapper(dio!.get(path, cancelToken: _cancelToken));
    return response.data;
  }

  Future<Map<String, dynamic>> post(String path,
      {required Map data, String token = ''}) async {
    Response? response = await apiWrapper(dio!.post(path,
        cancelToken: _cancelToken,
        data: data,
        options: Options(
          headers: headers..addAll({'Authorization': token}),
          receiveTimeout: receiveTimeout,
          sendTimeout: sendTimeout,
        )));
    if (response?.statusCode != 200){
      Prefs.prefs.token = '';
    }
    return response?.data;
  }
}

Future<List<CommodityListDataSpuList>?> getCommodityList(
    {String key = '',
    int page = 1,
    int pageSize = 20,
    String shopNo = '',
    FilterType filterType = FilterType.upShelfTime}) async {
  String url = searchLink(
    key: key,
    page: page,
    pageSize: pageSize,
    shopNo: shopNo,
    filterType: filterType,
  );
  try {
    Map<String, dynamic> response = await Http._interval().get(url);
    CommodityListEntity entity = CommodityListEntity.fromJson(response);
    int code = entity.code ?? 0;
    if (code != 1) {
      return null;
    }
    return entity.data!.spu!.list;
  } catch (e) {
    return null;
  }
}

Future<GoodDetailData?> getCommodityDetail(String commodityId) async {
  String url = detailLink(commodityId);
  try {
    Map<String, dynamic> response = await Http._interval().get(url);
    GoodDetailEntity entity = GoodDetailEntity.fromJson(response);
    int code = entity.code ?? 1;
    if (code != 1) {
      Fluttertoast.showToast(msg: entity.bizMsg ?? '发生未知错误');
      return null;
    }
    GoodDetailData? data = entity.data;
    return data;
  } catch (e) {
    return null;
  }
}

Future<bool> addCart({
  required int num,
  required String shopNo,
  required String productCode,
  required String productSkuNo,
  required String productSkuId,
  required String productSizeCode,
  required String shopCommodityId,
}) async {
  Map data = {
    "shopNo": shopNo,
    "productCode": productCode,
    "productSkuNo": productSkuNo,
    "productSizeCode": productSizeCode,
    "productSkuId": productSkuId,
    "shopCommodityId": shopCommodityId,
    "brandNo": "NK",
    "num": num,
    "merchantNo": "TS",
    "liveType": 0,
    "roomId": "",
    "roomName": "",
    "sourceScene": '',
  };
  String token = Prefs.prefs.token;
  if (token == '' || !token.contains('Bearer')) {
    Fluttertoast.showToast(msg: '请设置token');
    return false;
  }
  try {
    Map<String, dynamic> response =
        await Http._interval().post(addCartLink, data: data, token: token);
    if (response['code'] != 1) {
      Prefs.prefs.token = '';
      Fluttertoast.showToast(msg: response['bizMsg']);
      return false;
    } else {
      Fluttertoast.showToast(msg: '加入购物车成功');
      return true;
    }
  } catch (e) {
    Fluttertoast.showToast(msg: '加入购物车出错');
    return false;
  }
}
