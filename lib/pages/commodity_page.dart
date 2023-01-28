import 'package:get/get.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import '../widgets/commodity_list.dart';
import 'package:topsports/instances.dart';
import 'package:topsports/network/api.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:topsports/utils/extensions.dart';

class CommodityPage extends StatefulWidget {
  const CommodityPage({
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
  State createState() => _CommodityPageState();
}

class _CommodityPageState extends State<CommodityPage> {
  String inputToken = '';
  static const int maxHistory = 10;
  FilterType filterNow = FilterType.upShelfTime;
  GlobalKey<CommodityListState> key = GlobalKey();
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    controller.text = Prefs.prefs.token;
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Widget pageSwitcher() {
    return Center(
      child: SizedBox(
        width: 80.w,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            (widget.keyword == '' ? widget.shopNo : widget.keyword)
                .text(maxLength: 10),
            IconButton(
                onPressed: () {
                  if (key.currentState!.getPage > 1) {
                    int page = key.currentState!.changePage(-1);
                    key.currentState?.switchPage(page);
                    key.currentState?.scroll2top();
                  }
                },
                icon: const Icon(Icons.arrow_back_ios)),
            Obx(
              () => SizedBox(
                width: 8.w,
                child: TextField(
                  style: TextStyle(color: Colors.white, fontSize: 5.w),
                  onSubmitted: (String s) {
                    int? newPage = int.tryParse(s);
                    if (newPage != null &&
                        newPage > 0 &&
                        newPage != key.currentState!.getPage) {
                      key.currentState?.switchPage(newPage);
                    } else {
                      setState(() {});
                    }
                  },
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(1.w)),
                  controller: TextEditingController(
                      text: key.currentState!.getPage.toString()),
                ),
              ),
            ),
            IconButton(
                onPressed: () {
                  int page = key.currentState!.changePage(1);
                  key.currentState?.switchPage(page);
                  key.currentState?.scroll2top();
                },
                icon: const Icon(Icons.arrow_forward_ios))
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      persistentFooterAlignment: AlignmentDirectional.bottomCenter,
      persistentFooterButtons: [
        IconButton(
            onPressed: () {
              key.currentState!.scroll2top();
            },
            icon: const Icon(Icons.arrow_upward)),
        IconButton(
            onPressed: () {
              key.currentState!.scroll2bottom();
            },
            icon: const Icon(Icons.arrow_downward)),
        IconButton(
            onPressed: () async {
              await key.currentState!.refreshData(keyword: widget.keyword);
            },
            icon: const Icon(Icons.refresh)),
        IconButton(
          onPressed: () async {
            List<String> searchHistory =
                Prefs.prefs.instance.getStringList('searchHistory') ?? [];
            await Get.dialog(
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      searchHistory.isNotEmpty
                          ? Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(2.w))),
                              padding: EdgeInsets.all(2.w),
                              child: Wrap(
                                spacing: 2.w,
                                runSpacing: 2.w,
                                children: searchHistory
                                    .map(
                                      (e) => OutlinedButton(
                                        onPressed: () async {
                                          await getCommodityList(key: e).then(
                                            (value) async {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                Fluttertoast.showToast(
                                                    msg: '关键词错误');
                                                searchHistory.remove(e);
                                                await Prefs.prefs.instance
                                                    .setStringList(
                                                        'searchHistory',
                                                        searchHistory);
                                                return;
                                              }
                                              int index =
                                                  searchHistory.indexOf(e);
                                              searchHistory.removeAt(index);
                                              searchHistory.insert(0, e);
                                              await Prefs.prefs.instance
                                                  .setStringList(
                                                      'searchHistory',
                                                      searchHistory);
                                              Get.to(
                                                  () => CommodityPage(
                                                        keyword: e,
                                                      ),
                                                  arguments: value);
                                            },
                                          );
                                        },
                                        child: e.text(
                                            size: 4.w, color: Colors.black),
                                      ),
                                    )
                                    .toList(),
                              ),
                            )
                          : const SizedBox(),
                      SizedBox(
                        height: 2.h,
                      ),
                      Container(
                        padding: EdgeInsets.all(3.w),
                        alignment: Alignment.bottomCenter,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(2.w)),
                        ),
                        width: 50.w,
                        height: 8.h,
                        child: Material(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.all(Radius.circular(2.w)),
                          child: TextField(
                            autofocus: true,
                            cursorColor: Colors.black,
                            style: TextStyle(fontSize: 5.w),
                            onSubmitted: (String s) async {
                              await getCommodityList(key: s).then(
                                (value) async {
                                  if (value == null || value.isEmpty) {
                                    Fluttertoast.showToast(msg: '关键词错误');
                                    return;
                                  }
                                  if (searchHistory.length == maxHistory) {
                                    searchHistory.remove(searchHistory.last);
                                  }
                                  searchHistory.insert(0, s);
                                  await Prefs.prefs.instance.setStringList(
                                      'searchHistory', searchHistory);
                                  Get.to(
                                      () => CommodityPage(
                                            keyword: s,
                                          ),
                                      arguments: value);
                                },
                              );
                            },
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(2.w),
                                fillColor: Colors.transparent,
                                border: const OutlineInputBorder()),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                barrierDismissible: true);
          },
          icon: const Icon(Icons.search),
        ),
        PopupMenuButton(
            onSelected: (dynamic f) {
              FilterType filter = f as FilterType;
              filterNow = filter;
              key.currentState!.changeFilter(filter);
              key.currentState!.refreshData();
            },
            icon: const Icon(Icons.sort),
            itemBuilder: (context) => FilterType.values
                .map(
                  (e) => PopupMenuItem(
                    value: e,
                    child: ['销量', '最新', '默认'].elementAt(e.index).text(
                        color: e == filterNow ? Colors.red : Colors.black),
                  ),
                )
                .toList()),
        IconButton(
            onPressed: () async {
              controller.text = Prefs.prefs.token;
              await Get.dialog(Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 60.w,
                      padding: EdgeInsets.all(3.w),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(2.w)),
                      ),
                      child: Material(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.all(Radius.circular(2.w)),
                        child: TextField(
                          controller: controller,
                          minLines: 1,
                          maxLines: null,
                          autofocus: true,
                          cursorColor: Colors.black,
                          style: TextStyle(fontSize: 5.w),
                          decoration: InputDecoration(
                              hintText: '输入token',
                              contentPadding: EdgeInsets.all(2.w),
                              fillColor: Colors.transparent,
                              border: const OutlineInputBorder()),
                        ),
                      ),
                    ),
                    SizedBox(height: 2.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(2.w))),
                          onPressed: () async {
                            ClipboardData? data =
                            await Clipboard.getData(Clipboard.kTextPlain);
                            String token = data?.text ?? '';
                            setState(() {
                              controller.text = token;
                            });
                          },
                          color: Colors.white,
                          child: '粘贴'.text(size: 4.w),
                        ),
                        MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(2.w))),
                          onPressed: () async {
                            Prefs.prefs.token = controller.text;
                            Get.back();
                          },
                          color: Colors.white,
                          child: '确认'.text(size: 4.w),
                        )
                      ],
                    )
                  ],
                ),
              ));
            },
            icon: const Icon(Icons.settings))
      ],
      appBar: AppBar(
        toolbarHeight: 5.h,
        backgroundColor: Colors.black,
        elevation: 0,
        title: pageSwitcher(),
      ),
      body: CommodityList(
        key: key,
        page: widget.page,
        shopNo: widget.shopNo,
        keyword: widget.keyword,
        pageSize: widget.pageSize,
      ),
    );
  }
}
