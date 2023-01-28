import 'package:topsports/generated/json/base/json_convert_content.dart';
import 'package:topsports/models/good_detail_entity.dart';

GoodDetailEntity $GoodDetailEntityFromJson(Map<String, dynamic> json) {
	final GoodDetailEntity goodDetailEntity = GoodDetailEntity();
	final int? code = jsonConvert.convert<int>(json['code']);
	if (code != null) {
		goodDetailEntity.code = code;
	}
	final int? bizCode = jsonConvert.convert<int>(json['bizCode']);
	if (bizCode != null) {
		goodDetailEntity.bizCode = bizCode;
	}
	final String? bizMsg = jsonConvert.convert<String>(json['bizMsg']);
	if (bizMsg != null) {
		goodDetailEntity.bizMsg = bizMsg;
	}
	final GoodDetailData? data = jsonConvert.convert<GoodDetailData>(json['data']);
	if (data != null) {
		goodDetailEntity.data = data;
	}
	return goodDetailEntity;
}

Map<String, dynamic> $GoodDetailEntityToJson(GoodDetailEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['code'] = entity.code;
	data['bizCode'] = entity.bizCode;
	data['bizMsg'] = entity.bizMsg;
	data['data'] = entity.data?.toJson();
	return data;
}

GoodDetailData $GoodDetailDataFromJson(Map<String, dynamic> json) {
	final GoodDetailData goodDetailData = GoodDetailData();
	final String? zoneQsLevel = jsonConvert.convert<String>(json['zoneQsLevel']);
	if (zoneQsLevel != null) {
		goodDetailData.zoneQsLevel = zoneQsLevel;
	}
	final String? id = jsonConvert.convert<String>(json['id']);
	if (id != null) {
		goodDetailData.id = id;
	}
	final String? productCode = jsonConvert.convert<String>(json['productCode']);
	if (productCode != null) {
		goodDetailData.productCode = productCode;
	}
	final String? brandNo = jsonConvert.convert<String>(json['brandNo']);
	if (brandNo != null) {
		goodDetailData.brandNo = brandNo;
	}
	final String? brandDetailNo = jsonConvert.convert<String>(json['brandDetailNo']);
	if (brandDetailNo != null) {
		goodDetailData.brandDetailNo = brandDetailNo;
	}
	final String? productNo = jsonConvert.convert<String>(json['productNo']);
	if (productNo != null) {
		goodDetailData.productNo = productNo;
	}
	final String? productName = jsonConvert.convert<String>(json['productName']);
	if (productName != null) {
		goodDetailData.productName = productName;
	}
	final String? subTitle = jsonConvert.convert<String>(json['subTitle']);
	if (subTitle != null) {
		goodDetailData.subTitle = subTitle;
	}
	final double? tagPrice = jsonConvert.convert<double>(json['tagPrice']);
	if (tagPrice != null) {
		goodDetailData.tagPrice = tagPrice;
	}
	final double? salePrice = jsonConvert.convert<double>(json['salePrice']);
	if (salePrice != null) {
		goodDetailData.salePrice = salePrice;
	}
	final String? thumbnailPath = jsonConvert.convert<String>(json['thumbnailPath']);
	if (thumbnailPath != null) {
		goodDetailData.thumbnailPath = thumbnailPath;
	}
	final String? shopNo = jsonConvert.convert<String>(json['shopNo']);
	if (shopNo != null) {
		goodDetailData.shopNo = shopNo;
	}
	final String? shopName = jsonConvert.convert<String>(json['shopName']);
	if (shopName != null) {
		goodDetailData.shopName = shopName;
	}
	final dynamic? serviceTime = jsonConvert.convert<dynamic>(json['serviceTime']);
	if (serviceTime != null) {
		goodDetailData.serviceTime = serviceTime;
	}
	final String? wxWorkTicketUrl = jsonConvert.convert<String>(json['wxWorkTicketUrl']);
	if (wxWorkTicketUrl != null) {
		goodDetailData.wxWorkTicketUrl = wxWorkTicketUrl;
	}
	final String? color = jsonConvert.convert<String>(json['color']);
	if (color != null) {
		goodDetailData.color = color;
	}
	final String? description = jsonConvert.convert<String>(json['description']);
	if (description != null) {
		goodDetailData.description = description;
	}
	final int? status = jsonConvert.convert<int>(json['status']);
	if (status != null) {
		goodDetailData.status = status;
	}
	final String? merchantNo = jsonConvert.convert<String>(json['merchantNo']);
	if (merchantNo != null) {
		goodDetailData.merchantNo = merchantNo;
	}
	final int? singleSkuLimit = jsonConvert.convert<int>(json['singleSkuLimit']);
	if (singleSkuLimit != null) {
		goodDetailData.singleSkuLimit = singleSkuLimit;
	}
	final int? stock = jsonConvert.convert<int>(json['stock']);
	if (stock != null) {
		goodDetailData.stock = stock;
	}
	final dynamic? videoId = jsonConvert.convert<dynamic>(json['videoId']);
	if (videoId != null) {
		goodDetailData.videoId = videoId;
	}
	final dynamic? videoUrl = jsonConvert.convert<dynamic>(json['videoUrl']);
	if (videoUrl != null) {
		goodDetailData.videoUrl = videoUrl;
	}
	final dynamic? videoSource = jsonConvert.convert<dynamic>(json['videoSource']);
	if (videoSource != null) {
		goodDetailData.videoSource = videoSource;
	}
	final dynamic? videoPicUrl = jsonConvert.convert<dynamic>(json['videoPicUrl']);
	if (videoPicUrl != null) {
		goodDetailData.videoPicUrl = videoPicUrl;
	}
	final dynamic? videoTitle = jsonConvert.convert<dynamic>(json['videoTitle']);
	if (videoTitle != null) {
		goodDetailData.videoTitle = videoTitle;
	}
	final List<GoodDetailDataGroup>? group = jsonConvert.convertListNotNull<GoodDetailDataGroup>(json['group']);
	if (group != null) {
		goodDetailData.group = group;
	}
	final List<String>? picList = jsonConvert.convertListNotNull<String>(json['picList']);
	if (picList != null) {
		goodDetailData.picList = picList;
	}
	final List<GoodDetailDataSkuList>? skuList = jsonConvert.convertListNotNull<GoodDetailDataSkuList>(json['skuList']);
	if (skuList != null) {
		goodDetailData.skuList = skuList;
	}
	final int? isRoom = jsonConvert.convert<int>(json['isRoom']);
	if (isRoom != null) {
		goodDetailData.isRoom = isRoom;
	}
	final dynamic? roomid = jsonConvert.convert<dynamic>(json['roomid']);
	if (roomid != null) {
		goodDetailData.roomid = roomid;
	}
	final dynamic? roomName = jsonConvert.convert<dynamic>(json['roomName']);
	if (roomName != null) {
		goodDetailData.roomName = roomName;
	}
	final dynamic? liveStartTime = jsonConvert.convert<dynamic>(json['liveStartTime']);
	if (liveStartTime != null) {
		goodDetailData.liveStartTime = liveStartTime;
	}
	final dynamic? liveStatus = jsonConvert.convert<dynamic>(json['liveStatus']);
	if (liveStatus != null) {
		goodDetailData.liveStatus = liveStatus;
	}
	final dynamic? isSubscription = jsonConvert.convert<dynamic>(json['isSubscription']);
	if (isSubscription != null) {
		goodDetailData.isSubscription = isSubscription;
	}
	final List<dynamic>? proList = jsonConvert.convertListNotNull<dynamic>(json['proList']);
	if (proList != null) {
		goodDetailData.proList = proList;
	}
	final List<String>? sizePicList = jsonConvert.convertListNotNull<String>(json['sizePicList']);
	if (sizePicList != null) {
		goodDetailData.sizePicList = sizePicList;
	}
	final int? betterPrice = jsonConvert.convert<int>(json['betterPrice']);
	if (betterPrice != null) {
		goodDetailData.betterPrice = betterPrice;
	}
	final bool? existBetterPrice = jsonConvert.convert<bool>(json['existBetterPrice']);
	if (existBetterPrice != null) {
		goodDetailData.existBetterPrice = existBetterPrice;
	}
	final String? bestPriceNo = jsonConvert.convert<String>(json['bestPriceNo']);
	if (bestPriceNo != null) {
		goodDetailData.bestPriceNo = bestPriceNo;
	}
	final dynamic? bestPriceName = jsonConvert.convert<dynamic>(json['bestPriceName']);
	if (bestPriceName != null) {
		goodDetailData.bestPriceName = bestPriceName;
	}
	final List<dynamic>? detailPicList = jsonConvert.convertListNotNull<dynamic>(json['detailPicList']);
	if (detailPicList != null) {
		goodDetailData.detailPicList = detailPicList;
	}
	final int? commodityType = jsonConvert.convert<int>(json['commodityType']);
	if (commodityType != null) {
		goodDetailData.commodityType = commodityType;
	}
	final dynamic? ontimeShelfTime = jsonConvert.convert<dynamic>(json['ontimeShelfTime']);
	if (ontimeShelfTime != null) {
		goodDetailData.ontimeShelfTime = ontimeShelfTime;
	}
	final dynamic? ontimeDownShelfTime = jsonConvert.convert<dynamic>(json['ontimeDownShelfTime']);
	if (ontimeDownShelfTime != null) {
		goodDetailData.ontimeDownShelfTime = ontimeDownShelfTime;
	}
	final int? flashSalefFlag = jsonConvert.convert<int>(json['flashSalefFlag']);
	if (flashSalefFlag != null) {
		goodDetailData.flashSalefFlag = flashSalefFlag;
	}
	final int? isSubflashSale = jsonConvert.convert<int>(json['isSubflashSale']);
	if (isSubflashSale != null) {
		goodDetailData.isSubflashSale = isSubflashSale;
	}
	final dynamic? flashSaleStatus = jsonConvert.convert<dynamic>(json['flashSaleStatus']);
	if (flashSaleStatus != null) {
		goodDetailData.flashSaleStatus = flashSaleStatus;
	}
	final int? atmosphereFlag99Week = jsonConvert.convert<int>(json['atmosphereFlag99Week']);
	if (atmosphereFlag99Week != null) {
		goodDetailData.atmosphereFlag99Week = atmosphereFlag99Week;
	}
	final int? surplusShelfTime = jsonConvert.convert<int>(json['surplusShelfTime']);
	if (surplusShelfTime != null) {
		goodDetailData.surplusShelfTime = surplusShelfTime;
	}
	final String? qsMessage = jsonConvert.convert<String>(json['qsMessage']);
	if (qsMessage != null) {
		goodDetailData.qsMessage = qsMessage;
	}
	return goodDetailData;
}

Map<String, dynamic> $GoodDetailDataToJson(GoodDetailData entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['zoneQsLevel'] = entity.zoneQsLevel;
	data['id'] = entity.id;
	data['productCode'] = entity.productCode;
	data['brandNo'] = entity.brandNo;
	data['brandDetailNo'] = entity.brandDetailNo;
	data['productNo'] = entity.productNo;
	data['productName'] = entity.productName;
	data['subTitle'] = entity.subTitle;
	data['tagPrice'] = entity.tagPrice;
	data['salePrice'] = entity.salePrice;
	data['thumbnailPath'] = entity.thumbnailPath;
	data['shopNo'] = entity.shopNo;
	data['shopName'] = entity.shopName;
	data['serviceTime'] = entity.serviceTime;
	data['wxWorkTicketUrl'] = entity.wxWorkTicketUrl;
	data['color'] = entity.color;
	data['description'] = entity.description;
	data['status'] = entity.status;
	data['merchantNo'] = entity.merchantNo;
	data['singleSkuLimit'] = entity.singleSkuLimit;
	data['stock'] = entity.stock;
	data['videoId'] = entity.videoId;
	data['videoUrl'] = entity.videoUrl;
	data['videoSource'] = entity.videoSource;
	data['videoPicUrl'] = entity.videoPicUrl;
	data['videoTitle'] = entity.videoTitle;
	data['group'] =  entity.group?.map((v) => v.toJson()).toList();
	data['picList'] =  entity.picList;
	data['skuList'] =  entity.skuList?.map((v) => v.toJson()).toList();
	data['isRoom'] = entity.isRoom;
	data['roomid'] = entity.roomid;
	data['roomName'] = entity.roomName;
	data['liveStartTime'] = entity.liveStartTime;
	data['liveStatus'] = entity.liveStatus;
	data['isSubscription'] = entity.isSubscription;
	data['proList'] =  entity.proList;
	data['sizePicList'] =  entity.sizePicList;
	data['betterPrice'] = entity.betterPrice;
	data['existBetterPrice'] = entity.existBetterPrice;
	data['bestPriceNo'] = entity.bestPriceNo;
	data['bestPriceName'] = entity.bestPriceName;
	data['detailPicList'] =  entity.detailPicList;
	data['commodityType'] = entity.commodityType;
	data['ontimeShelfTime'] = entity.ontimeShelfTime;
	data['ontimeDownShelfTime'] = entity.ontimeDownShelfTime;
	data['flashSalefFlag'] = entity.flashSalefFlag;
	data['isSubflashSale'] = entity.isSubflashSale;
	data['flashSaleStatus'] = entity.flashSaleStatus;
	data['atmosphereFlag99Week'] = entity.atmosphereFlag99Week;
	data['surplusShelfTime'] = entity.surplusShelfTime;
	data['qsMessage'] = entity.qsMessage;
	return data;
}

GoodDetailDataGroup $GoodDetailDataGroupFromJson(Map<String, dynamic> json) {
	final GoodDetailDataGroup goodDetailDataGroup = GoodDetailDataGroup();
	final String? id = jsonConvert.convert<String>(json['id']);
	if (id != null) {
		goodDetailDataGroup.id = id;
	}
	final String? color = jsonConvert.convert<String>(json['color']);
	if (color != null) {
		goodDetailDataGroup.color = color;
	}
	return goodDetailDataGroup;
}

Map<String, dynamic> $GoodDetailDataGroupToJson(GoodDetailDataGroup entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['color'] = entity.color;
	return data;
}

GoodDetailDataSkuList $GoodDetailDataSkuListFromJson(Map<String, dynamic> json) {
	final GoodDetailDataSkuList goodDetailDataSkuList = GoodDetailDataSkuList();
	final String? id = jsonConvert.convert<String>(json['id']);
	if (id != null) {
		goodDetailDataSkuList.id = id;
	}
	final String? skuNo = jsonConvert.convert<String>(json['skuNo']);
	if (skuNo != null) {
		goodDetailDataSkuList.skuNo = skuNo;
	}
	final int? stock = jsonConvert.convert<int>(json['stock']);
	if (stock != null) {
		goodDetailDataSkuList.stock = stock;
	}
	final String? sizeNo = jsonConvert.convert<String>(json['sizeNo']);
	if (sizeNo != null) {
		goodDetailDataSkuList.sizeNo = sizeNo;
	}
	final String? sizeCode = jsonConvert.convert<String>(json['sizeCode']);
	if (sizeCode != null) {
		goodDetailDataSkuList.sizeCode = sizeCode;
	}
	final String? sizeEur = jsonConvert.convert<String>(json['sizeEur']);
	if (sizeEur != null) {
		goodDetailDataSkuList.sizeEur = sizeEur;
	}
	return goodDetailDataSkuList;
}

Map<String, dynamic> $GoodDetailDataSkuListToJson(GoodDetailDataSkuList entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['skuNo'] = entity.skuNo;
	data['stock'] = entity.stock;
	data['sizeNo'] = entity.sizeNo;
	data['sizeCode'] = entity.sizeCode;
	data['sizeEur'] = entity.sizeEur;
	return data;
}