import 'package:topsports/generated/json/base/json_convert_content.dart';
import 'package:topsports/models/shopping_cart_info_entity.dart';

ShoppingCartInfoEntity $ShoppingCartInfoEntityFromJson(Map<String, dynamic> json) {
	final ShoppingCartInfoEntity shoppingCartInfoEntity = ShoppingCartInfoEntity();
	final int? code = jsonConvert.convert<int>(json['code']);
	if (code != null) {
		shoppingCartInfoEntity.code = code;
	}
	final int? bizCode = jsonConvert.convert<int>(json['bizCode']);
	if (bizCode != null) {
		shoppingCartInfoEntity.bizCode = bizCode;
	}
	final String? bizMsg = jsonConvert.convert<String>(json['bizMsg']);
	if (bizMsg != null) {
		shoppingCartInfoEntity.bizMsg = bizMsg;
	}
	final ShoppingCartInfoData? data = jsonConvert.convert<ShoppingCartInfoData>(json['data']);
	if (data != null) {
		shoppingCartInfoEntity.data = data;
	}
	return shoppingCartInfoEntity;
}

Map<String, dynamic> $ShoppingCartInfoEntityToJson(ShoppingCartInfoEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['code'] = entity.code;
	data['bizCode'] = entity.bizCode;
	data['bizMsg'] = entity.bizMsg;
	data['data'] = entity.data?.toJson();
	return data;
}

ShoppingCartInfoData $ShoppingCartInfoDataFromJson(Map<String, dynamic> json) {
	final ShoppingCartInfoData shoppingCartInfoData = ShoppingCartInfoData();
	final double? totalAmount = jsonConvert.convert<double>(json['totalAmount']);
	if (totalAmount != null) {
		shoppingCartInfoData.totalAmount = totalAmount;
	}
	final int? totalNum = jsonConvert.convert<int>(json['totalNum']);
	if (totalNum != null) {
		shoppingCartInfoData.totalNum = totalNum;
	}
	final double? discountAmount = jsonConvert.convert<double>(json['discountAmount']);
	if (discountAmount != null) {
		shoppingCartInfoData.discountAmount = discountAmount;
	}
	final List<ShoppingCartInfoDataWillBuyList>? willBuyList = jsonConvert.convertListNotNull<ShoppingCartInfoDataWillBuyList>(json['willBuyList']);
	if (willBuyList != null) {
		shoppingCartInfoData.willBuyList = willBuyList;
	}
	final List<dynamic>? failureList = jsonConvert.convertListNotNull<dynamic>(json['failureList']);
	if (failureList != null) {
		shoppingCartInfoData.failureList = failureList;
	}
	final int? failureNum = jsonConvert.convert<int>(json['failureNum']);
	if (failureNum != null) {
		shoppingCartInfoData.failureNum = failureNum;
	}
	final int? singleSkuLimit = jsonConvert.convert<int>(json['singleSkuLimit']);
	if (singleSkuLimit != null) {
		shoppingCartInfoData.singleSkuLimit = singleSkuLimit;
	}
	final int? totalSkuLimit = jsonConvert.convert<int>(json['totalSkuLimit']);
	if (totalSkuLimit != null) {
		shoppingCartInfoData.totalSkuLimit = totalSkuLimit;
	}
	final dynamic? errorMsg = jsonConvert.convert<dynamic>(json['errorMsg']);
	if (errorMsg != null) {
		shoppingCartInfoData.errorMsg = errorMsg;
	}
	final dynamic? betterPrice = jsonConvert.convert<dynamic>(json['betterPrice']);
	if (betterPrice != null) {
		shoppingCartInfoData.betterPrice = betterPrice;
	}
	final bool? existBetterPrice = jsonConvert.convert<bool>(json['existBetterPrice']);
	if (existBetterPrice != null) {
		shoppingCartInfoData.existBetterPrice = existBetterPrice;
	}
	return shoppingCartInfoData;
}

Map<String, dynamic> $ShoppingCartInfoDataToJson(ShoppingCartInfoData entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['totalAmount'] = entity.totalAmount;
	data['totalNum'] = entity.totalNum;
	data['discountAmount'] = entity.discountAmount;
	data['willBuyList'] =  entity.willBuyList?.map((v) => v.toJson()).toList();
	data['failureList'] =  entity.failureList;
	data['failureNum'] = entity.failureNum;
	data['singleSkuLimit'] = entity.singleSkuLimit;
	data['totalSkuLimit'] = entity.totalSkuLimit;
	data['errorMsg'] = entity.errorMsg;
	data['betterPrice'] = entity.betterPrice;
	data['existBetterPrice'] = entity.existBetterPrice;
	return data;
}

ShoppingCartInfoDataWillBuyList $ShoppingCartInfoDataWillBuyListFromJson(Map<String, dynamic> json) {
	final ShoppingCartInfoDataWillBuyList shoppingCartInfoDataWillBuyList = ShoppingCartInfoDataWillBuyList();
	final ShoppingCartInfoDataWillBuyListMap? map = jsonConvert.convert<ShoppingCartInfoDataWillBuyListMap>(json['map']);
	if (map != null) {
		shoppingCartInfoDataWillBuyList.map = map;
	}
	final dynamic? filterRules = jsonConvert.convert<dynamic>(json['filterRules']);
	if (filterRules != null) {
		shoppingCartInfoDataWillBuyList.filterRules = filterRules;
	}
	final dynamic? orderByClause = jsonConvert.convert<dynamic>(json['orderByClause']);
	if (orderByClause != null) {
		shoppingCartInfoDataWillBuyList.orderByClause = orderByClause;
	}
	final String? shopId = jsonConvert.convert<String>(json['shopId']);
	if (shopId != null) {
		shoppingCartInfoDataWillBuyList.shopId = shopId;
	}
	final String? shopNo = jsonConvert.convert<String>(json['shopNo']);
	if (shopNo != null) {
		shoppingCartInfoDataWillBuyList.shopNo = shopNo;
	}
	final String? shopName = jsonConvert.convert<String>(json['shopName']);
	if (shopName != null) {
		shoppingCartInfoDataWillBuyList.shopName = shopName;
	}
	final int? totalNum = jsonConvert.convert<int>(json['totalNum']);
	if (totalNum != null) {
		shoppingCartInfoDataWillBuyList.totalNum = totalNum;
	}
	final dynamic? logonName = jsonConvert.convert<dynamic>(json['logonName']);
	if (logonName != null) {
		shoppingCartInfoDataWillBuyList.logonName = logonName;
	}
	final int? orderSource = jsonConvert.convert<int>(json['orderSource']);
	if (orderSource != null) {
		shoppingCartInfoDataWillBuyList.orderSource = orderSource;
	}
	final dynamic? xSource = jsonConvert.convert<dynamic>(json['source']);
	if (xSource != null) {
		shoppingCartInfoDataWillBuyList.xSource = xSource;
	}
	final int? virtualShopFlag = jsonConvert.convert<int>(json['virtualShopFlag']);
	if (virtualShopFlag != null) {
		shoppingCartInfoDataWillBuyList.virtualShopFlag = virtualShopFlag;
	}
	final List<ShoppingCartInfoDataWillBuyListBuyCommodityVOList>? buyCommodityVOList = jsonConvert.convertListNotNull<ShoppingCartInfoDataWillBuyListBuyCommodityVOList>(json['buyCommodityVOList']);
	if (buyCommodityVOList != null) {
		shoppingCartInfoDataWillBuyList.buyCommodityVOList = buyCommodityVOList;
	}
	final List<dynamic>? proActivityList = jsonConvert.convertListNotNull<dynamic>(json['proActivityList']);
	if (proActivityList != null) {
		shoppingCartInfoDataWillBuyList.proActivityList = proActivityList;
	}
	final int? checked = jsonConvert.convert<int>(json['checked']);
	if (checked != null) {
		shoppingCartInfoDataWillBuyList.checked = checked;
	}
	final int? sortIndex = jsonConvert.convert<int>(json['sortIndex']);
	if (sortIndex != null) {
		shoppingCartInfoDataWillBuyList.sortIndex = sortIndex;
	}
	final dynamic? ticketDtos = jsonConvert.convert<dynamic>(json['ticketDtos']);
	if (ticketDtos != null) {
		shoppingCartInfoDataWillBuyList.ticketDtos = ticketDtos;
	}
	final dynamic? orderTickets = jsonConvert.convert<dynamic>(json['orderTickets']);
	if (orderTickets != null) {
		shoppingCartInfoDataWillBuyList.orderTickets = orderTickets;
	}
	final dynamic? ticketPresentDtos = jsonConvert.convert<dynamic>(json['ticketPresentDtos']);
	if (ticketPresentDtos != null) {
		shoppingCartInfoDataWillBuyList.ticketPresentDtos = ticketPresentDtos;
	}
	final dynamic? assignProNo = jsonConvert.convert<dynamic>(json['assignProNo']);
	if (assignProNo != null) {
		shoppingCartInfoDataWillBuyList.assignProNo = assignProNo;
	}
	return shoppingCartInfoDataWillBuyList;
}

Map<String, dynamic> $ShoppingCartInfoDataWillBuyListToJson(ShoppingCartInfoDataWillBuyList entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['map'] = entity.map?.toJson();
	data['filterRules'] = entity.filterRules;
	data['orderByClause'] = entity.orderByClause;
	data['shopId'] = entity.shopId;
	data['shopNo'] = entity.shopNo;
	data['shopName'] = entity.shopName;
	data['totalNum'] = entity.totalNum;
	data['logonName'] = entity.logonName;
	data['orderSource'] = entity.orderSource;
	data['source'] = entity.xSource;
	data['virtualShopFlag'] = entity.virtualShopFlag;
	data['buyCommodityVOList'] =  entity.buyCommodityVOList?.map((v) => v.toJson()).toList();
	data['proActivityList'] =  entity.proActivityList;
	data['checked'] = entity.checked;
	data['sortIndex'] = entity.sortIndex;
	data['ticketDtos'] = entity.ticketDtos;
	data['orderTickets'] = entity.orderTickets;
	data['ticketPresentDtos'] = entity.ticketPresentDtos;
	data['assignProNo'] = entity.assignProNo;
	return data;
}

ShoppingCartInfoDataWillBuyListMap $ShoppingCartInfoDataWillBuyListMapFromJson(Map<String, dynamic> json) {
	final ShoppingCartInfoDataWillBuyListMap shoppingCartInfoDataWillBuyListMap = ShoppingCartInfoDataWillBuyListMap();
	return shoppingCartInfoDataWillBuyListMap;
}

Map<String, dynamic> $ShoppingCartInfoDataWillBuyListMapToJson(ShoppingCartInfoDataWillBuyListMap entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	return data;
}

ShoppingCartInfoDataWillBuyListBuyCommodityVOList $ShoppingCartInfoDataWillBuyListBuyCommodityVOListFromJson(Map<String, dynamic> json) {
	final ShoppingCartInfoDataWillBuyListBuyCommodityVOList shoppingCartInfoDataWillBuyListBuyCommodityVOList = ShoppingCartInfoDataWillBuyListBuyCommodityVOList();
	final ShoppingCartInfoDataWillBuyListBuyCommodityVOListMap? map = jsonConvert.convert<ShoppingCartInfoDataWillBuyListBuyCommodityVOListMap>(json['map']);
	if (map != null) {
		shoppingCartInfoDataWillBuyListBuyCommodityVOList.map = map;
	}
	final dynamic? filterRules = jsonConvert.convert<dynamic>(json['filterRules']);
	if (filterRules != null) {
		shoppingCartInfoDataWillBuyListBuyCommodityVOList.filterRules = filterRules;
	}
	final dynamic? orderByClause = jsonConvert.convert<dynamic>(json['orderByClause']);
	if (orderByClause != null) {
		shoppingCartInfoDataWillBuyListBuyCommodityVOList.orderByClause = orderByClause;
	}
	final String? shoppingcartId = jsonConvert.convert<String>(json['shoppingcartId']);
	if (shoppingcartId != null) {
		shoppingCartInfoDataWillBuyListBuyCommodityVOList.shoppingcartId = shoppingcartId;
	}
	final String? memberId = jsonConvert.convert<String>(json['memberId']);
	if (memberId != null) {
		shoppingCartInfoDataWillBuyListBuyCommodityVOList.memberId = memberId;
	}
	final dynamic? paterId = jsonConvert.convert<dynamic>(json['paterId']);
	if (paterId != null) {
		shoppingCartInfoDataWillBuyListBuyCommodityVOList.paterId = paterId;
	}
	final String? shopNo = jsonConvert.convert<String>(json['shopNo']);
	if (shopNo != null) {
		shoppingCartInfoDataWillBuyListBuyCommodityVOList.shopNo = shopNo;
	}
	final String? commodityId = jsonConvert.convert<String>(json['commodityId']);
	if (commodityId != null) {
		shoppingCartInfoDataWillBuyListBuyCommodityVOList.commodityId = commodityId;
	}
	final String? shopCommodityId = jsonConvert.convert<String>(json['shopCommodityId']);
	if (shopCommodityId != null) {
		shoppingCartInfoDataWillBuyListBuyCommodityVOList.shopCommodityId = shopCommodityId;
	}
	final String? productCode = jsonConvert.convert<String>(json['productCode']);
	if (productCode != null) {
		shoppingCartInfoDataWillBuyListBuyCommodityVOList.productCode = productCode;
	}
	final String? productNo = jsonConvert.convert<String>(json['productNo']);
	if (productNo != null) {
		shoppingCartInfoDataWillBuyListBuyCommodityVOList.productNo = productNo;
	}
	final String? productName = jsonConvert.convert<String>(json['productName']);
	if (productName != null) {
		shoppingCartInfoDataWillBuyListBuyCommodityVOList.productName = productName;
	}
	final dynamic? productSizeName = jsonConvert.convert<dynamic>(json['productSizeName']);
	if (productSizeName != null) {
		shoppingCartInfoDataWillBuyListBuyCommodityVOList.productSizeName = productSizeName;
	}
	final String? productSizeCode = jsonConvert.convert<String>(json['productSizeCode']);
	if (productSizeCode != null) {
		shoppingCartInfoDataWillBuyListBuyCommodityVOList.productSizeCode = productSizeCode;
	}
	final dynamic? productSizeEur = jsonConvert.convert<dynamic>(json['productSizeEur']);
	if (productSizeEur != null) {
		shoppingCartInfoDataWillBuyListBuyCommodityVOList.productSizeEur = productSizeEur;
	}
	final String? sizeNo = jsonConvert.convert<String>(json['sizeNo']);
	if (sizeNo != null) {
		shoppingCartInfoDataWillBuyListBuyCommodityVOList.sizeNo = sizeNo;
	}
	final String? productSkuNo = jsonConvert.convert<String>(json['productSkuNo']);
	if (productSkuNo != null) {
		shoppingCartInfoDataWillBuyListBuyCommodityVOList.productSkuNo = productSkuNo;
	}
	final String? productColorName = jsonConvert.convert<String>(json['productColorName']);
	if (productColorName != null) {
		shoppingCartInfoDataWillBuyListBuyCommodityVOList.productColorName = productColorName;
	}
	final String? productColorNo = jsonConvert.convert<String>(json['productColorNo']);
	if (productColorNo != null) {
		shoppingCartInfoDataWillBuyListBuyCommodityVOList.productColorNo = productColorNo;
	}
	final double? tagPrice = jsonConvert.convert<double>(json['tagPrice']);
	if (tagPrice != null) {
		shoppingCartInfoDataWillBuyListBuyCommodityVOList.tagPrice = tagPrice;
	}
	final double? salePrice = jsonConvert.convert<double>(json['salePrice']);
	if (salePrice != null) {
		shoppingCartInfoDataWillBuyListBuyCommodityVOList.salePrice = salePrice;
	}
	final dynamic? compareTagPrice = jsonConvert.convert<dynamic>(json['compareTagPrice']);
	if (compareTagPrice != null) {
		shoppingCartInfoDataWillBuyListBuyCommodityVOList.compareTagPrice = compareTagPrice;
	}
	final dynamic? compareSalePrice = jsonConvert.convert<dynamic>(json['compareSalePrice']);
	if (compareSalePrice != null) {
		shoppingCartInfoDataWillBuyListBuyCommodityVOList.compareSalePrice = compareSalePrice;
	}
	final String? picPath = jsonConvert.convert<String>(json['picPath']);
	if (picPath != null) {
		shoppingCartInfoDataWillBuyListBuyCommodityVOList.picPath = picPath;
	}
	final int? num = jsonConvert.convert<int>(json['num']);
	if (num != null) {
		shoppingCartInfoDataWillBuyListBuyCommodityVOList.num = num;
	}
	final int? checked = jsonConvert.convert<int>(json['checked']);
	if (checked != null) {
		shoppingCartInfoDataWillBuyListBuyCommodityVOList.checked = checked;
	}
	final int? status = jsonConvert.convert<int>(json['status']);
	if (status != null) {
		shoppingCartInfoDataWillBuyListBuyCommodityVOList.status = status;
	}
	final String? merchantNo = jsonConvert.convert<String>(json['merchantNo']);
	if (merchantNo != null) {
		shoppingCartInfoDataWillBuyListBuyCommodityVOList.merchantNo = merchantNo;
	}
	final String? brandDetailNo = jsonConvert.convert<String>(json['brandDetailNo']);
	if (brandDetailNo != null) {
		shoppingCartInfoDataWillBuyListBuyCommodityVOList.brandDetailNo = brandDetailNo;
	}
	final int? isValid = jsonConvert.convert<int>(json['isValid']);
	if (isValid != null) {
		shoppingCartInfoDataWillBuyListBuyCommodityVOList.isValid = isValid;
	}
	final dynamic? proNo = jsonConvert.convert<dynamic>(json['proNo']);
	if (proNo != null) {
		shoppingCartInfoDataWillBuyListBuyCommodityVOList.proNo = proNo;
	}
	final dynamic? proName = jsonConvert.convert<dynamic>(json['proName']);
	if (proName != null) {
		shoppingCartInfoDataWillBuyListBuyCommodityVOList.proName = proName;
	}
	final dynamic? proNameApp = jsonConvert.convert<dynamic>(json['proNameApp']);
	if (proNameApp != null) {
		shoppingCartInfoDataWillBuyListBuyCommodityVOList.proNameApp = proNameApp;
	}
	final dynamic? assignProNo = jsonConvert.convert<dynamic>(json['assignProNo']);
	if (assignProNo != null) {
		shoppingCartInfoDataWillBuyListBuyCommodityVOList.assignProNo = assignProNo;
	}
	final dynamic? startTime = jsonConvert.convert<dynamic>(json['startTime']);
	if (startTime != null) {
		shoppingCartInfoDataWillBuyListBuyCommodityVOList.startTime = startTime;
	}
	final dynamic? endTime = jsonConvert.convert<dynamic>(json['endTime']);
	if (endTime != null) {
		shoppingCartInfoDataWillBuyListBuyCommodityVOList.endTime = endTime;
	}
	final dynamic? effectiveProMap = jsonConvert.convert<dynamic>(json['effectiveProMap']);
	if (effectiveProMap != null) {
		shoppingCartInfoDataWillBuyListBuyCommodityVOList.effectiveProMap = effectiveProMap;
	}
	final bool? havStock = jsonConvert.convert<bool>(json['havStock']);
	if (havStock != null) {
		shoppingCartInfoDataWillBuyListBuyCommodityVOList.havStock = havStock;
	}
	final int? itemFlag = jsonConvert.convert<int>(json['itemFlag']);
	if (itemFlag != null) {
		shoppingCartInfoDataWillBuyListBuyCommodityVOList.itemFlag = itemFlag;
	}
	final int? setToGray = jsonConvert.convert<int>(json['setToGray']);
	if (setToGray != null) {
		shoppingCartInfoDataWillBuyListBuyCommodityVOList.setToGray = setToGray;
	}
	final int? sortIndex = jsonConvert.convert<int>(json['sortIndex']);
	if (sortIndex != null) {
		shoppingCartInfoDataWillBuyListBuyCommodityVOList.sortIndex = sortIndex;
	}
	final int? liveType = jsonConvert.convert<int>(json['liveType']);
	if (liveType != null) {
		shoppingCartInfoDataWillBuyListBuyCommodityVOList.liveType = liveType;
	}
	final dynamic? roomId = jsonConvert.convert<dynamic>(json['roomId']);
	if (roomId != null) {
		shoppingCartInfoDataWillBuyListBuyCommodityVOList.roomId = roomId;
	}
	final String? roomName = jsonConvert.convert<String>(json['roomName']);
	if (roomName != null) {
		shoppingCartInfoDataWillBuyListBuyCommodityVOList.roomName = roomName;
	}
	final bool? bestPrice = jsonConvert.convert<bool>(json['bestPrice']);
	if (bestPrice != null) {
		shoppingCartInfoDataWillBuyListBuyCommodityVOList.bestPrice = bestPrice;
	}
	final dynamic? bestPriceNo = jsonConvert.convert<dynamic>(json['bestPriceNo']);
	if (bestPriceNo != null) {
		shoppingCartInfoDataWillBuyListBuyCommodityVOList.bestPriceNo = bestPriceNo;
	}
	final int? proTimes = jsonConvert.convert<int>(json['proTimes']);
	if (proTimes != null) {
		shoppingCartInfoDataWillBuyListBuyCommodityVOList.proTimes = proTimes;
	}
	final int? giftsQty = jsonConvert.convert<int>(json['giftsQty']);
	if (giftsQty != null) {
		shoppingCartInfoDataWillBuyListBuyCommodityVOList.giftsQty = giftsQty;
	}
	final dynamic? preferentialValue = jsonConvert.convert<dynamic>(json['preferentialValue']);
	if (preferentialValue != null) {
		shoppingCartInfoDataWillBuyListBuyCommodityVOList.preferentialValue = preferentialValue;
	}
	final int? giftsStock = jsonConvert.convert<int>(json['giftsStock']);
	if (giftsStock != null) {
		shoppingCartInfoDataWillBuyListBuyCommodityVOList.giftsStock = giftsStock;
	}
	final int? toTop = jsonConvert.convert<int>(json['toTop']);
	if (toTop != null) {
		shoppingCartInfoDataWillBuyListBuyCommodityVOList.toTop = toTop;
	}
	final dynamic? priceFlag = jsonConvert.convert<dynamic>(json['priceFlag']);
	if (priceFlag != null) {
		shoppingCartInfoDataWillBuyListBuyCommodityVOList.priceFlag = priceFlag;
	}
	final dynamic? commodityType = jsonConvert.convert<dynamic>(json['commodityType']);
	if (commodityType != null) {
		shoppingCartInfoDataWillBuyListBuyCommodityVOList.commodityType = commodityType;
	}
	return shoppingCartInfoDataWillBuyListBuyCommodityVOList;
}

Map<String, dynamic> $ShoppingCartInfoDataWillBuyListBuyCommodityVOListToJson(ShoppingCartInfoDataWillBuyListBuyCommodityVOList entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['map'] = entity.map?.toJson();
	data['filterRules'] = entity.filterRules;
	data['orderByClause'] = entity.orderByClause;
	data['shoppingcartId'] = entity.shoppingcartId;
	data['memberId'] = entity.memberId;
	data['paterId'] = entity.paterId;
	data['shopNo'] = entity.shopNo;
	data['commodityId'] = entity.commodityId;
	data['shopCommodityId'] = entity.shopCommodityId;
	data['productCode'] = entity.productCode;
	data['productNo'] = entity.productNo;
	data['productName'] = entity.productName;
	data['productSizeName'] = entity.productSizeName;
	data['productSizeCode'] = entity.productSizeCode;
	data['productSizeEur'] = entity.productSizeEur;
	data['sizeNo'] = entity.sizeNo;
	data['productSkuNo'] = entity.productSkuNo;
	data['productColorName'] = entity.productColorName;
	data['productColorNo'] = entity.productColorNo;
	data['tagPrice'] = entity.tagPrice;
	data['salePrice'] = entity.salePrice;
	data['compareTagPrice'] = entity.compareTagPrice;
	data['compareSalePrice'] = entity.compareSalePrice;
	data['picPath'] = entity.picPath;
	data['num'] = entity.num;
	data['checked'] = entity.checked;
	data['status'] = entity.status;
	data['merchantNo'] = entity.merchantNo;
	data['brandDetailNo'] = entity.brandDetailNo;
	data['isValid'] = entity.isValid;
	data['proNo'] = entity.proNo;
	data['proName'] = entity.proName;
	data['proNameApp'] = entity.proNameApp;
	data['assignProNo'] = entity.assignProNo;
	data['startTime'] = entity.startTime;
	data['endTime'] = entity.endTime;
	data['effectiveProMap'] = entity.effectiveProMap;
	data['havStock'] = entity.havStock;
	data['itemFlag'] = entity.itemFlag;
	data['setToGray'] = entity.setToGray;
	data['sortIndex'] = entity.sortIndex;
	data['liveType'] = entity.liveType;
	data['roomId'] = entity.roomId;
	data['roomName'] = entity.roomName;
	data['bestPrice'] = entity.bestPrice;
	data['bestPriceNo'] = entity.bestPriceNo;
	data['proTimes'] = entity.proTimes;
	data['giftsQty'] = entity.giftsQty;
	data['preferentialValue'] = entity.preferentialValue;
	data['giftsStock'] = entity.giftsStock;
	data['toTop'] = entity.toTop;
	data['priceFlag'] = entity.priceFlag;
	data['commodityType'] = entity.commodityType;
	return data;
}

ShoppingCartInfoDataWillBuyListBuyCommodityVOListMap $ShoppingCartInfoDataWillBuyListBuyCommodityVOListMapFromJson(Map<String, dynamic> json) {
	final ShoppingCartInfoDataWillBuyListBuyCommodityVOListMap shoppingCartInfoDataWillBuyListBuyCommodityVOListMap = ShoppingCartInfoDataWillBuyListBuyCommodityVOListMap();
	return shoppingCartInfoDataWillBuyListBuyCommodityVOListMap;
}

Map<String, dynamic> $ShoppingCartInfoDataWillBuyListBuyCommodityVOListMapToJson(ShoppingCartInfoDataWillBuyListBuyCommodityVOListMap entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	return data;
}