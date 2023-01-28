import 'dart:async';
import '../instances.dart';
import '../network/api.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:topsports/variable.dart';
import 'package:topsports/instances.dart';
import 'package:topsports/utils/extensions.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _scaleController = AnimationController(
      vsync: this, duration: const Duration(milliseconds: 600));
  late Animation<double> scaleAnimation = Tween<double>(begin: 1.0, end: 0.35)
      .chain(CurveTween(curve: Curves.ease))
      .animate(_scaleController);
  bool onError = false;
  Timer? typeTimer;
  String markText = appName;
  int currentIndex = 0;

  String get currentMark => markText.substring(0, currentIndex);
  final ValueNotifier<String> typeNotifier = ValueNotifier<String>("");

  @override
  void initState() {
    if (!kIsWeb) {
      SystemChrome.setSystemUIOverlayStyle(
          const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    }
    Future.delayed(const Duration(seconds: 0), () async {
      _scaleController.forward();
      typeTimer = Timer.periodic(const Duration(milliseconds: 150), (timer) {
        if (currentIndex < markText.length) {
          currentIndex++;
          typeNotifier.value = currentMark;
        } else {
          timer.cancel();
        }
      });
      await Future.delayed(const Duration(seconds: 2));
      initStep();
    });
    super.initState();
  }

  @override
  void dispose() {
    _scaleController.dispose();
    typeTimer?.cancel();
    super.dispose();
  }

  initStep() async {
    setState(() {
      onError = false;
    });
    await Prefs.prefs.init();
    try {
      dynamic arg = await getCommodityList(page: 1);
      Get.offNamed('/commodity', arguments: arg);
    } catch (e) {
      setState(() {
        onError = true;
      });
      ScaffoldMessenger.of(context).showMaterialBanner(MaterialBanner(
        backgroundColor: Colors.black12,
        content: '网络请求出错，点击以重新加载'.text(),
        actions: [
          GestureDetector(
            child: const Icon(CupertinoIcons.refresh),
            onTap: () {
              ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
              initStep();
            },
          )
        ],
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size / 100;
    S.size.vw = size.width;
    S.size.vh = size.height;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.black,
        child: Container(
          alignment: Alignment.center,
          child: Stack(
            alignment: Alignment.center,
            children: [
              onError
                  ? GestureDetector(
                      child: Icon(CupertinoIcons.slowmo,
                          size: 30.w, color: Colors.black87),
                      onTap: () {
                        ScaffoldMessenger.of(context)
                            .hideCurrentMaterialBanner();
                        initStep();
                      },
                    )
                  : SizedBox(
                      width: 25.w,
                      height: 25.w,
                      child: CircularProgressIndicator(
                        color: Colors.yellow,
                        strokeWidth: 0.5.w,
                      ),
                    ),
              ScaleTransition(
                scale: scaleAnimation,
                child: '启动中'.text(size: 15.w, color: Colors.white),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 8.h),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: AnimatedBuilder(
                    builder: (_, __) {
                      return currentMark.text(size: 8.w, color: Colors.white);
                    },
                    animation: typeNotifier,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
