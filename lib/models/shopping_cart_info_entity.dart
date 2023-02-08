import 'package:topsports/generated/json/base/json_field.dart';
import 'package:topsports/generated/json/shopping_cart_info_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class ShoppingCartInfoEntity {

	int? code;
	int? bizCode;
	String? bizMsg;
	ShoppingCartInfoData? data;
  
  ShoppingCartInfoEntity();

  factory ShoppingCartInfoEntity.fromJson(Map<String, dynamic> json) => $ShoppingCartInfoEntityFromJson(json);

  Map<String, dynamic> toJson() => $ShoppingCartInfoEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class ShoppingCartInfoData {

	double? totalAmount;
	int? totalNum;
	double? discountAmount;
	List<ShoppingCartInfoDataWillBuyList>? willBuyList;
	List<dynamic>? failureList;
	int? failureNum;
	int? singleSkuLimit;
	int? totalSkuLimit;
	dynamic errorMsg;
	dynamic betterPrice;
	bool? existBetterPrice;
  
  ShoppingCartInfoData();

  factory ShoppingCartInfoData.fromJson(Map<String, dynamic> json) => $ShoppingCartInfoDataFromJson(json);

  Map<String, dynamic> toJson() => $ShoppingCartInfoDataToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class ShoppingCartInfoDataWillBuyList {

	ShoppingCartInfoDataWillBuyListMap? map;
	dynamic filterRules;
	dynamic orderByClause;
	String? shopId;
	String? shopNo;
	String? shopName;
	int? totalNum;
	dynamic logonName;
	int? orderSource;
	@JSONField(name: "source")
	dynamic xSource;
	int? virtualShopFlag;
	List<ShoppingCartInfoDataWillBuyListBuyCommodityVOList>? buyCommodityVOList;
	List<dynamic>? proActivityList;
	int? checked;
	int? sortIndex;
	dynamic ticketDtos;
	dynamic orderTickets;
	dynamic ticketPresentDtos;
	dynamic assignProNo;
  
  ShoppingCartInfoDataWillBuyList();

  factory ShoppingCartInfoDataWillBuyList.fromJson(Map<String, dynamic> json) => $ShoppingCartInfoDataWillBuyListFromJson(json);

  Map<String, dynamic> toJson() => $ShoppingCartInfoDataWillBuyListToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class ShoppingCartInfoDataWillBuyListMap {


  
  ShoppingCartInfoDataWillBuyListMap();

  factory ShoppingCartInfoDataWillBuyListMap.fromJson(Map<String, dynamic> json) => $ShoppingCartInfoDataWillBuyListMapFromJson(json);

  Map<String, dynamic> toJson() => $ShoppingCartInfoDataWillBuyListMapToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class ShoppingCartInfoDataWillBuyListBuyCommodityVOList {

	ShoppingCartInfoDataWillBuyListBuyCommodityVOListMap? map;
	dynamic filterRules;
	dynamic orderByClause;
	String? shoppingcartId;
	String? memberId;
	dynamic paterId;
	String? shopNo;
	String? commodityId;
	String? shopCommodityId;
	String? productCode;
	String? productNo;
	String? productName;
	dynamic productSizeName;
	String? productSizeCode;
	dynamic productSizeEur;
	String? sizeNo;
	String? productSkuNo;
	String? productColorName;
	String? productColorNo;
	double? tagPrice;
	double? salePrice;
	dynamic compareTagPrice;
	dynamic compareSalePrice;
	String? picPath;
	int? num;
	int? checked;
	int? status;
	String? merchantNo;
	String? brandDetailNo;
	int? isValid;
	dynamic proNo;
	dynamic proName;
	dynamic proNameApp;
	dynamic assignProNo;
	dynamic startTime;
	dynamic endTime;
	dynamic effectiveProMap;
	bool? havStock;
	int? itemFlag;
	int? setToGray;
	int? sortIndex;
	int? liveType;
	dynamic roomId;
	String? roomName;
	bool? bestPrice;
	dynamic bestPriceNo;
	int? proTimes;
	int? giftsQty;
	dynamic preferentialValue;
	int? giftsStock;
	int? toTop;
	dynamic priceFlag;
	dynamic commodityType;
  
  ShoppingCartInfoDataWillBuyListBuyCommodityVOList();

  factory ShoppingCartInfoDataWillBuyListBuyCommodityVOList.fromJson(Map<String, dynamic> json) => $ShoppingCartInfoDataWillBuyListBuyCommodityVOListFromJson(json);

  Map<String, dynamic> toJson() => $ShoppingCartInfoDataWillBuyListBuyCommodityVOListToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class ShoppingCartInfoDataWillBuyListBuyCommodityVOListMap {


  
  ShoppingCartInfoDataWillBuyListBuyCommodityVOListMap();

  factory ShoppingCartInfoDataWillBuyListBuyCommodityVOListMap.fromJson(Map<String, dynamic> json) => $ShoppingCartInfoDataWillBuyListBuyCommodityVOListMapFromJson(json);

  Map<String, dynamic> toJson() => $ShoppingCartInfoDataWillBuyListBuyCommodityVOListMapToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}