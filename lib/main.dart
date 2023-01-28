import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:topsports/variable.dart';
import 'package:topsports/pages/loading_page.dart';
import 'package:topsports/pages/commodity_page.dart';
import 'package:topsports/pages/commodity_detail_page.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    navigatorKey: navigatorKey,
    initialRoute: '/',
    routes: {
      '/': (context) => const LoadingPage(),
      '/commodity': (context) => const CommodityPage(),
      '/detail':(context) => const CommodityDetailPage(),
    },
  ));
}
