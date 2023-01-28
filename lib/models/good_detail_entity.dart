import 'package:topsports/generated/json/base/json_field.dart';
import 'package:topsports/generated/json/good_detail_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class GoodDetailEntity {

	int? code;
	int? bizCode;
	String? bizMsg;
	GoodDetailData? data;
  
  GoodDetailEntity();

  factory GoodDetailEntity.fromJson(Map<String, dynamic> json) => $GoodDetailEntityFromJson(json);

  Map<String, dynamic> toJson() => $GoodDetailEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class GoodDetailData {

	String? zoneQsLevel;
	String? id;
	String? productCode;
	String? brandNo;
	String? brandDetailNo;
	String? productNo;
	String? productName;
	String? subTitle;
	double? tagPrice;
	double? salePrice;
	String? thumbnailPath;
	String? shopNo;
	String? shopName;
	dynamic serviceTime;
	String? wxWorkTicketUrl;
	String? color;
	String? description;
	int? status;
	String? merchantNo;
	int? singleSkuLimit;
	int? stock;
	dynamic videoId;
	dynamic videoUrl;
	dynamic videoSource;
	dynamic videoPicUrl;
	dynamic videoTitle;
	List<GoodDetailDataGroup>? group;
	List<String>? picList;
	List<GoodDetailDataSkuList>? skuList;
	int? isRoom;
	dynamic roomid;
	dynamic roomName;
	dynamic liveStartTime;
	dynamic liveStatus;
	dynamic isSubscription;
	List<dynamic>? proList;
	List<String>? sizePicList;
	int? betterPrice;
	bool? existBetterPrice;
	String? bestPriceNo;
	dynamic bestPriceName;
	List<dynamic>? detailPicList;
	int? commodityType;
	dynamic ontimeShelfTime;
	dynamic ontimeDownShelfTime;
	int? flashSalefFlag;
	int? isSubflashSale;
	dynamic flashSaleStatus;
	int? atmosphereFlag99Week;
	int? surplusShelfTime;
	String? qsMessage;
  
  GoodDetailData();

  factory GoodDetailData.fromJson(Map<String, dynamic> json) => $GoodDetailDataFromJson(json);

  Map<String, dynamic> toJson() => $GoodDetailDataToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class GoodDetailDataGroup {

	String? id;
	String? color;
  
  GoodDetailDataGroup();

  factory GoodDetailDataGroup.fromJson(Map<String, dynamic> json) => $GoodDetailDataGroupFromJson(json);

  Map<String, dynamic> toJson() => $GoodDetailDataGroupToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class GoodDetailDataSkuList {

	String? id;
	String? skuNo;
	int? stock;
	String? sizeNo;
	String? sizeCode;
	String? sizeEur;
  
  GoodDetailDataSkuList();

  factory GoodDetailDataSkuList.fromJson(Map<String, dynamic> json) => $GoodDetailDataSkuListFromJson(json);

  Map<String, dynamic> toJson() => $GoodDetailDataSkuListToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}