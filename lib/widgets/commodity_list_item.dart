import '../network/api.dart';
import 'package:get/get.dart';
import '../utils/extensions.dart';
import 'package:flutter/material.dart';
import '../models/good_detail_entity.dart';
import '../models/commodity_list_entity.dart';

class CommodityListItem extends StatefulWidget {
  const CommodityListItem({Key? key, required this.detail}) : super(key: key);
  final CommodityListDataSpuList detail;

  @override
  State createState() => _CommodityListItemState();
}

class _CommodityListItemState extends State<CommodityListItem> {
  int discountType = 1;

  @override
  void initState() {
    bool hasActivity = widget.detail.ifActivity ?? false;
    if (hasActivity) {
      discountType = 1;
    } else {
      discountType = 2;
    }
    super.initState();
  }

  List<Widget> discountMSG() {
    switch (discountType) {
      case 1:
        num price = (widget.detail.salePrice ?? 0);
        return [
          (widget.detail.proName ?? widget.detail.proNameApp ?? '无活动')
              .text(color: Colors.red, maxLines: 1),
          '售价:$price'.text(color: Colors.red, maxLines: 1),
        ];
      case 2:
        num tagPrice = widget.detail.tagPrice ?? 0;
        num salePrice = widget.detail.salePrice ?? 0;
        return [
          Row(
            children: [
              '售价:$salePrice'.text(color: Colors.red, maxLines: 1),
              (' ' * 3).text(color: Colors.red, maxLines: 1),
              '牌价:$tagPrice'.text(
                color: Colors.black,
                maxLines: 1,
                decoration: TextDecoration.lineThrough,
              )
            ],
          ),
        ];
      default:
        return [];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      height: 15.h,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            flex: 4,
            child: Image.network(widget.detail.thumbnailPath ?? ''),
          ),
          Expanded(
            flex: 6,
            child: Container(
              padding: EdgeInsets.all(0.5.w),
              color: Colors.black12,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  (widget.detail.shopName ?? '无店铺名')
                      .text(color: Colors.black, maxLines: 1),
                  (widget.detail.productName ?? '无商品名')
                      .text(color: Colors.black, maxLines: 1),
                  (widget.detail.productCode ?? '无货号')
                      .text(color: Colors.black, maxLines: 1),
                  ...discountMSG(),
                ],
              ),
            ),
          ),
        ],
      ),
    ).pd(0.5.w).tap(() async {
      GoodDetailData? data = await getCommodityDetail(widget.detail.id!);
      Get.toNamed('/detail', arguments: data);
    });
  }
}
