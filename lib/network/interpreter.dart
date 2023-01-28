import 'package:dio/dio.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:topsports/instances.dart';

class DioInterceptor extends Interceptor {
  DioInterceptor();

  @override
  void onError(
    DioError err,
    ErrorInterceptorHandler handler,
  ) {
    // RequestOptions options = err.requestOptions;
    if (err.response?.statusCode != 200){
      Fluttertoast.showToast(msg: err.response?.statusMessage??'请求出错');
    }
    if (err.response?.statusCode == 302){
      Prefs.prefs.token = '';
    }
    print('network error: ${err.response?.data},code:${err.response?.statusCode}');
    super.onError(err, handler);
  }

  // @override
  // void onResponse(Response response, ResponseInterceptorHandler handler) {
  //   // Map data = response.data;
  //   super.onResponse(response, handler);
  // }
}
