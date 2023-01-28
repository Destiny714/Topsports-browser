import 'dart:async';
import '../network/api.dart';
import 'package:get/get.dart';
import 'package:async/async.dart';
import 'commodity_list_item.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:topsports/variable.dart';
import '../models/commodity_list_entity.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:topsports/utils/extensions.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';

class CommodityList extends StatefulWidget {
  const CommodityList({
    Key? key,
    this.page = 1,
    this.shopNo = '',
    this.keyword = '',
    this.pageSize = 20,
  }) : super(key: key);
  final int page;
  final int pageSize;
  final String shopNo;
  final String keyword;

  @override
  State<CommodityList> createState() => CommodityListState();
}

class CommodityListState extends State<CommodityList>
    with SingleTickerProviderStateMixin {
  RxInt pageNow = 1.obs;
  final AsyncMemoizer _memoizer = AsyncMemoizer();
  List<CommodityListDataSpuList> itemDetails = [];
  ScrollController controller = ScrollController();
  late final AnimationController _ctrl = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 300),
  );
  FilterType filterNow = FilterType.upShelfTime;

  @override
  void initState() {
    super.initState();
    List<CommodityListDataSpuList>? arg = Get.arguments;
    for (var detail in arg ?? []) {
      if (filter(detail)) {
        itemDetails.add(detail);
      }
    }
  }

  @override
  void dispose() {
    _ctrl.dispose();
    controller.dispose();
    super.dispose();
  }

  int changePage(int change) {
    pageNow.value += change;
    return pageNow.value;
  }

  int get getPage => pageNow.value;

  void scroll2top() {
    if (itemDetails.isNotEmpty) {
      controller.animateTo(0,
          duration: const Duration(milliseconds: 1000), curve: Curves.easeOut);
    }
  }

  void scroll2bottom() {
    controller.animateTo(15.5.h * (itemDetails.length - 4),
        duration: const Duration(milliseconds: 1000), curve: Curves.easeOut);
  }

  void changeFilter(FilterType f) {
    filterNow = f;
  }

  Future refreshData({String keyword = ''}) async {
    if (keyword == '') {
      keyword = widget.keyword;
    }
    int oldPage = pageNow.value;
    pageNow.value = 1;
    try {
      await getCommodityList(
        page: 1,
        key: keyword,
        pageSize: widget.pageSize,
        shopNo: widget.shopNo,
        filterType: filterNow,
      ).then((value) => setState(() {
            itemDetails = [];
            for (var detail in value ?? []) {
              if (filter(detail)) {
                itemDetails.add(detail);
              }
            }
          }));
      scroll2top();
    } catch (e) {
      pageNow.value = oldPage;
      Fluttertoast.showToast(msg: '发生网络错误');
    }
    await HapticFeedback.vibrate();
  }

  Future addData() async {
    pageNow.value += 1;
    try {
      await getCommodityList(
        page: pageNow.value,
        key: widget.keyword,
        pageSize: widget.pageSize,
        shopNo: widget.shopNo,
        filterType: filterNow,
      ).then((value) => setState(() {
            for (var detail in value ?? []) {
              if (filter(detail)) {
                itemDetails.add(detail);
              }
            }
          }));
    } catch (e) {
      pageNow.value -= 1;
      Fluttertoast.showToast(msg: '发生网络错误');
    }
    await HapticFeedback.vibrate();
  }

  Future switchPage(int page) async {
    int oldPage = pageNow.value;
    try {
      pageNow.value = page;
      await getCommodityList(
        page: page,
        key: widget.keyword,
        pageSize: widget.pageSize,
        shopNo: widget.shopNo,
        filterType: filterNow,
      ).then((value) => setState(() {
            itemDetails = [];
            for (var detail in value ?? []) {
              if (filter(detail)) {
                itemDetails.add(detail);
              }
            }
          }));
    } catch (e) {
      pageNow.value = oldPage;
      Fluttertoast.showToast(msg: '发生网络错误');
    }
    await HapticFeedback.vibrate();
  }

  bool filter(CommodityListDataSpuList detail) {
    return detail.ifActivity == true ||
        (detail.salePrice ?? 0) < (detail.tagPrice ?? 0);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(future: _memoizer.runOnce(() async {
      if (itemDetails.isEmpty) {
        await refreshData(keyword: widget.keyword);
      }
    }), builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.done) {
        return EasyRefresh(
          header: CustomHeader(
              extent: 12.h,
              triggerDistance: 12.h + 10,
              headerBuilder: (BuildContext context,
                  RefreshMode refreshState,
                  double pulledExtent,
                  double refreshTriggerPullDistance,
                  double refreshIndicatorExtent,
                  AxisDirection axisDirection,
                  bool float,
                  Duration? completeDuration,
                  bool enableInfiniteRefresh,
                  bool success,
                  bool noMore) {
                double pullDistance = pulledExtent > refreshIndicatorExtent
                    ? refreshIndicatorExtent
                    : pulledExtent;
                if (refreshState == RefreshMode.armed && !_ctrl.isAnimating) {
                  _ctrl.repeat();
                } else if (refreshState != RefreshMode.armed &&
                    _ctrl.isAnimating) {
                  _ctrl.reset();
                }
                return Padding(
                  padding: EdgeInsets.only(top: pullDistance / 5),
                  child: Container(
                    alignment: Alignment.center,
                    height: 10.h,
                    child: refreshState == RefreshMode.armed
                        ? AnimatedOpacity(
                            opacity: _ctrl.value,
                            duration: const Duration(milliseconds: 300),
                            child: appName.text(size: 7.w, color: Colors.grey),
                          )
                        : Transform.scale(
                            scale: pullDistance / refreshIndicatorExtent,
                            child: appName.text(size: 7.w, color: Colors.grey),
                          ),
                  ),
                );
              }),
          footer: CustomFooter(
              extent: 12.h,
              triggerDistance: 12.h + 10,
              footerBuilder: (BuildContext context,
                  LoadMode loadState,
                  double pulledExtent,
                  double refreshTriggerPullDistance,
                  double refreshIndicatorExtent,
                  AxisDirection axisDirection,
                  bool float,
                  Duration? completeDuration,
                  bool enableInfiniteRefresh,
                  bool success,
                  bool noMore) {
                double pullDistance = pulledExtent > refreshIndicatorExtent
                    ? refreshIndicatorExtent
                    : pulledExtent;
                if (loadState == LoadMode.armed && !_ctrl.isAnimating) {
                  _ctrl.repeat();
                } else if (loadState != LoadMode.armed && _ctrl.isAnimating) {
                  _ctrl.reset();
                }
                return Padding(
                  padding: EdgeInsets.only(top: pullDistance / 5),
                  child: Container(
                    alignment: Alignment.center,
                    height: 10.h,
                    child: loadState == LoadMode.armed
                        ? AnimatedOpacity(
                            opacity: _ctrl.value,
                            duration: const Duration(milliseconds: 300),
                            child: appName.text(size: 7.w, color: Colors.grey),
                          )
                        : Transform.scale(
                            scale: pullDistance / refreshIndicatorExtent,
                            child: appName.text(size: 7.w, color: Colors.grey),
                          ),
                  ),
                );
              }),
          onRefresh: refreshData,
          onLoad: addData,
          child: ListView(
            controller: controller,
            children: itemDetails
                .map((e) => CommodityListItem(detail: e))
                .toList(),
          ),
          // child: GridView.custom(
          //   gridDelegate: SliverWovenGridDelegate.count(
          //     crossAxisCount: 1,
          //     pattern: [
          //       const WovenGridTile(3),
          //     ],
          //   ),
          //   childrenDelegate: SliverChildBuilderDelegate(
          //     (context, index) => CommodityListItem(
          //       detail: itemDetails.elementAt(index),
          //     ),
          //     childCount: itemDetails.length,
          //   ),
          // ),
        );
      } else {
        return const CupertinoActivityIndicator();
      }
    });
  }
}
