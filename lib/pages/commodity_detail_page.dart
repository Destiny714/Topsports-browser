import '../network/api.dart';
import 'package:get/get.dart';
import '../utils/extensions.dart';
import '../widgets/image_slider.dart';
import 'package:flutter/material.dart';
import '../models/good_detail_entity.dart';

import 'commodity_page.dart';

class CommodityDetailPage extends StatefulWidget {
  const CommodityDetailPage({Key? key}) : super(key: key);

  @override
  State<CommodityDetailPage> createState() => _CommodityDetailPageState();
}

class _CommodityDetailPageState extends State<CommodityDetailPage> {
  late GoodDetailData data;

  @override
  void initState() {
    data = Get.arguments;
    super.initState();
  }

  Widget sizeButton(String size, int stock) {
    return Container(
      width: 20.w,
      height: 5.h,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: stock > 0 ? Colors.orange : Colors.grey,
        borderRadius: BorderRadius.all(Radius.circular(3.w)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          size.text(color: stock > 0 ? Colors.black : Colors.white, size: 4.w),
          stock.text(color: stock > 0 ? Colors.black : Colors.white, size: 6.w)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            data.productCode!.text(),
            TextButton(
                onPressed: () async {
                  await getCommodityList(key: data.productCode!).then(
                    (value) {
                      Get.to(
                          () => CommodityPage(
                                keyword: data.productCode!,
                              ),
                          arguments: value);
                    },
                  );
                },
                child: '查看同款'.text())
          ],
        ),
        toolbarHeight: 5.h,
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ImageSlider(
                images: data.picList!.map((url) => NetworkImage(url)).toList(),
                width: 90.w,
                height: 30.h),
            data.productName!.text(size: 5.w).pd(1.w),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                data.shopName!.text(size: 5.w, maxLength: 18).pd(1.w),
                TextButton(
                    onPressed: () async {
                      await getCommodityList(shopNo: data.shopNo!).then(
                        (value) {
                          Get.to(
                              () => CommodityPage(
                                    shopNo: data.shopNo!,
                                  ),
                              arguments: value);
                        },
                      );
                    },
                    child: '点击进入店铺'.text()),
              ],
            ),
            ...data.proList!
                .map((pro) => '${pro['proNameApp']}'
                    .text(color: Colors.pink, size: 4.w)
                    .pd(1.w))
                .toList(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                '最优价:${data.betterPrice == 0 ? '无' : data.betterPrice!}'
                    .text(color: Colors.red, size: 5.w),
                '零售价:${data.tagPrice!.toInt()}'
                    .text(color: Colors.pink, size: 4.w),
                '折扣价:${data.salePrice!.toInt()}'
                    .text(color: Colors.pink, size: 4.w),
              ],
            ),
            Wrap(
              spacing: 2.w,
              runSpacing: 2.w,
              children: data.skuList!
                  .map((sku) =>
                      sizeButton(sku.sizeEur ?? sku.sizeCode!, sku.stock ?? 0)
                          .tap(() async {
                        await Get.dialog(Center(
                          child: Container(
                            padding: EdgeInsets.all(3.w),
                            alignment: Alignment.bottomCenter,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(2.w)),
                            ),
                            width: 20.w,
                            height: 8.h,
                            child: Material(
                              color: Colors.transparent,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(2.w)),
                              child: TextField(
                                keyboardType: const TextInputType.numberWithOptions(signed: true),
                                autofocus: true,
                                cursorColor: Colors.black,
                                style: TextStyle(fontSize: 5.w),
                                onSubmitted: (String s) async {
                                  int num = int.tryParse(s) ?? 1;
                                  await addCart(
                                    num: num,
                                    shopNo: data.shopNo!,
                                    productCode: data.productCode!,
                                    productSkuNo: sku.skuNo!,
                                    productSkuId: sku.id!,
                                    productSizeCode: sku.sizeCode!,
                                    shopCommodityId: data.id!,
                                  ).then((value) => Get.back());
                                },
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(2.w),
                                    fillColor: Colors.transparent,
                                    border: const OutlineInputBorder()),
                              ),
                            ),
                          ),
                        ));
                      }))
                  .toList(),
            ).pd(2.w),
            data.subTitle?.text().pd(1.w) ?? const SizedBox(),
            data.qsMessage?.text().pd(1.w) ?? const SizedBox(),
          ],
        ),
      ),
    );
  }
}
