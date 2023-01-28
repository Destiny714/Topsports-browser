import 'package:topsports/generated/json/base/json_convert_content.dart';
import 'package:topsports/models/commodity_list_entity.dart';

CommodityListEntity $CommodityListEntityFromJson(Map<String, dynamic> json) {
	final CommodityListEntity commodityListEntity = CommodityListEntity();
	final int? code = jsonConvert.convert<int>(json['code']);
	if (code != null) {
		commodityListEntity.code = code;
	}
	final int? bizCode = jsonConvert.convert<int>(json['bizCode']);
	if (bizCode != null) {
		commodityListEntity.bizCode = bizCode;
	}
	final String? bizMsg = jsonConvert.convert<String>(json['bizMsg']);
	if (bizMsg != null) {
		commodityListEntity.bizMsg = bizMsg;
	}
	final CommodityListData? data = jsonConvert.convert<CommodityListData>(json['data']);
	if (data != null) {
		commodityListEntity.data = data;
	}
	return commodityListEntity;
}

Map<String, dynamic> $CommodityListEntityToJson(CommodityListEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['code'] = entity.code;
	data['bizCode'] = entity.bizCode;
	data['bizMsg'] = entity.bizMsg;
	data['data'] = entity.data?.toJson();
	return data;
}

CommodityListData $CommodityListDataFromJson(Map<String, dynamic> json) {
	final CommodityListData commodityListData = CommodityListData();
	final int? searchResultType = jsonConvert.convert<int>(json['searchResultType']);
	if (searchResultType != null) {
		commodityListData.searchResultType = searchResultType;
	}
	final CommodityListDataSpu? spu = jsonConvert.convert<CommodityListDataSpu>(json['spu']);
	if (spu != null) {
		commodityListData.spu = spu;
	}
	final CommodityListDataScreenDTO? screenDTO = jsonConvert.convert<CommodityListDataScreenDTO>(json['screenDTO']);
	if (screenDTO != null) {
		commodityListData.screenDTO = screenDTO;
	}
	return commodityListData;
}

Map<String, dynamic> $CommodityListDataToJson(CommodityListData entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['searchResultType'] = entity.searchResultType;
	data['spu'] = entity.spu?.toJson();
	data['screenDTO'] = entity.screenDTO?.toJson();
	return data;
}

CommodityListDataSpu $CommodityListDataSpuFromJson(Map<String, dynamic> json) {
	final CommodityListDataSpu commodityListDataSpu = CommodityListDataSpu();
	final CommodityListDataSpuPagination? pagination = jsonConvert.convert<CommodityListDataSpuPagination>(json['pagination']);
	if (pagination != null) {
		commodityListDataSpu.pagination = pagination;
	}
	final List<CommodityListDataSpuList>? list = jsonConvert.convertListNotNull<CommodityListDataSpuList>(json['list']);
	if (list != null) {
		commodityListDataSpu.list = list;
	}
	return commodityListDataSpu;
}

Map<String, dynamic> $CommodityListDataSpuToJson(CommodityListDataSpu entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['pagination'] = entity.pagination?.toJson();
	data['list'] =  entity.list?.map((v) => v.toJson()).toList();
	return data;
}

CommodityListDataSpuPagination $CommodityListDataSpuPaginationFromJson(Map<String, dynamic> json) {
	final CommodityListDataSpuPagination commodityListDataSpuPagination = CommodityListDataSpuPagination();
	final int? current = jsonConvert.convert<int>(json['current']);
	if (current != null) {
		commodityListDataSpuPagination.current = current;
	}
	final int? pageSize = jsonConvert.convert<int>(json['pageSize']);
	if (pageSize != null) {
		commodityListDataSpuPagination.pageSize = pageSize;
	}
	final int? total = jsonConvert.convert<int>(json['total']);
	if (total != null) {
		commodityListDataSpuPagination.total = total;
	}
	return commodityListDataSpuPagination;
}

Map<String, dynamic> $CommodityListDataSpuPaginationToJson(CommodityListDataSpuPagination entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['current'] = entity.current;
	data['pageSize'] = entity.pageSize;
	data['total'] = entity.total;
	return data;
}

CommodityListDataSpuList $CommodityListDataSpuListFromJson(Map<String, dynamic> json) {
	final CommodityListDataSpuList commodityListDataSpuList = CommodityListDataSpuList();
	final String? id = jsonConvert.convert<String>(json['id']);
	if (id != null) {
		commodityListDataSpuList.id = id;
	}
	final String? productCode = jsonConvert.convert<String>(json['productCode']);
	if (productCode != null) {
		commodityListDataSpuList.productCode = productCode;
	}
	final String? productNo = jsonConvert.convert<String>(json['productNo']);
	if (productNo != null) {
		commodityListDataSpuList.productNo = productNo;
	}
	final String? productName = jsonConvert.convert<String>(json['productName']);
	if (productName != null) {
		commodityListDataSpuList.productName = productName;
	}
	final String? thumbnailPath = jsonConvert.convert<String>(json['thumbnailPath']);
	if (thumbnailPath != null) {
		commodityListDataSpuList.thumbnailPath = thumbnailPath;
	}
	final double? tagPrice = jsonConvert.convert<double>(json['tagPrice']);
	if (tagPrice != null) {
		commodityListDataSpuList.tagPrice = tagPrice;
	}
	final double? salePrice = jsonConvert.convert<double>(json['salePrice']);
	if (salePrice != null) {
		commodityListDataSpuList.salePrice = salePrice;
	}
	final String? shopNo = jsonConvert.convert<String>(json['shopNo']);
	if (shopNo != null) {
		commodityListDataSpuList.shopNo = shopNo;
	}
	final String? shopName = jsonConvert.convert<String>(json['shopName']);
	if (shopName != null) {
		commodityListDataSpuList.shopName = shopName;
	}
	final dynamic? shopAddress = jsonConvert.convert<dynamic>(json['shopAddress']);
	if (shopAddress != null) {
		commodityListDataSpuList.shopAddress = shopAddress;
	}
	final String? proName = jsonConvert.convert<String>(json['proName']);
	if (proName != null) {
		commodityListDataSpuList.proName = proName;
	}
	final String? proNameApp = jsonConvert.convert<String>(json['proNameApp']);
	if (proNameApp != null) {
		commodityListDataSpuList.proNameApp = proNameApp;
	}
	final String? zoneQsLevel = jsonConvert.convert<String>(json['zoneQsLevel']);
	if (zoneQsLevel != null) {
		commodityListDataSpuList.zoneQsLevel = zoneQsLevel;
	}
	final String? brandDetailNo = jsonConvert.convert<String>(json['brandDetailNo']);
	if (brandDetailNo != null) {
		commodityListDataSpuList.brandDetailNo = brandDetailNo;
	}
	final int? isTop = jsonConvert.convert<int>(json['isTop']);
	if (isTop != null) {
		commodityListDataSpuList.isTop = isTop;
	}
	final String? activityTypeStr = jsonConvert.convert<String>(json['activityTypeStr']);
	if (activityTypeStr != null) {
		commodityListDataSpuList.activityTypeStr = activityTypeStr;
	}
	final String? templateNo = jsonConvert.convert<String>(json['templateNo']);
	if (templateNo != null) {
		commodityListDataSpuList.templateNo = templateNo;
	}
	final String? proNo = jsonConvert.convert<String>(json['proNo']);
	if (proNo != null) {
		commodityListDataSpuList.proNo = proNo;
	}
	final bool? ifActivity = jsonConvert.convert<bool>(json['ifActivity']);
	if (ifActivity != null) {
		commodityListDataSpuList.ifActivity = ifActivity;
	}
	return commodityListDataSpuList;
}

Map<String, dynamic> $CommodityListDataSpuListToJson(CommodityListDataSpuList entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['productCode'] = entity.productCode;
	data['productNo'] = entity.productNo;
	data['productName'] = entity.productName;
	data['thumbnailPath'] = entity.thumbnailPath;
	data['tagPrice'] = entity.tagPrice;
	data['salePrice'] = entity.salePrice;
	data['shopNo'] = entity.shopNo;
	data['shopName'] = entity.shopName;
	data['shopAddress'] = entity.shopAddress;
	data['proName'] = entity.proName;
	data['proNameApp'] = entity.proNameApp;
	data['zoneQsLevel'] = entity.zoneQsLevel;
	data['brandDetailNo'] = entity.brandDetailNo;
	data['isTop'] = entity.isTop;
	data['activityTypeStr'] = entity.activityTypeStr;
	data['templateNo'] = entity.templateNo;
	data['proNo'] = entity.proNo;
	data['ifActivity'] = entity.ifActivity;
	return data;
}

CommodityListDataScreenDTO $CommodityListDataScreenDTOFromJson(Map<String, dynamic> json) {
	final CommodityListDataScreenDTO commodityListDataScreenDTO = CommodityListDataScreenDTO();
	final List<CommodityListDataScreenDTOOptions>? options = jsonConvert.convertListNotNull<CommodityListDataScreenDTOOptions>(json['options']);
	if (options != null) {
		commodityListDataScreenDTO.options = options;
	}
	final CommodityListDataScreenDTOPriceOption? priceOption = jsonConvert.convert<CommodityListDataScreenDTOPriceOption>(json['priceOption']);
	if (priceOption != null) {
		commodityListDataScreenDTO.priceOption = priceOption;
	}
	return commodityListDataScreenDTO;
}

Map<String, dynamic> $CommodityListDataScreenDTOToJson(CommodityListDataScreenDTO entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['options'] =  entity.options?.map((v) => v.toJson()).toList();
	data['priceOption'] = entity.priceOption?.toJson();
	return data;
}

CommodityListDataScreenDTOOptions $CommodityListDataScreenDTOOptionsFromJson(Map<String, dynamic> json) {
	final CommodityListDataScreenDTOOptions commodityListDataScreenDTOOptions = CommodityListDataScreenDTOOptions();
	final String? id = jsonConvert.convert<String>(json['id']);
	if (id != null) {
		commodityListDataScreenDTOOptions.id = id;
	}
	final String? optionName = jsonConvert.convert<String>(json['optionName']);
	if (optionName != null) {
		commodityListDataScreenDTOOptions.optionName = optionName;
	}
	final int? type = jsonConvert.convert<int>(json['type']);
	if (type != null) {
		commodityListDataScreenDTOOptions.type = type;
	}
	final dynamic? isActive = jsonConvert.convert<dynamic>(json['isActive']);
	if (isActive != null) {
		commodityListDataScreenDTOOptions.isActive = isActive;
	}
	final bool? hasChild = jsonConvert.convert<bool>(json['hasChild']);
	if (hasChild != null) {
		commodityListDataScreenDTOOptions.hasChild = hasChild;
	}
	final dynamic? parentId = jsonConvert.convert<dynamic>(json['parentId']);
	if (parentId != null) {
		commodityListDataScreenDTOOptions.parentId = parentId;
	}
	final bool? root = jsonConvert.convert<bool>(json['root']);
	if (root != null) {
		commodityListDataScreenDTOOptions.root = root;
	}
	final int? level = jsonConvert.convert<int>(json['level']);
	if (level != null) {
		commodityListDataScreenDTOOptions.level = level;
	}
	final dynamic? sort = jsonConvert.convert<dynamic>(json['sort']);
	if (sort != null) {
		commodityListDataScreenDTOOptions.sort = sort;
	}
	final dynamic? brandSort = jsonConvert.convert<dynamic>(json['brandSort']);
	if (brandSort != null) {
		commodityListDataScreenDTOOptions.brandSort = brandSort;
	}
	final List<CommodityListDataScreenDTOOptionsOptions>? options = jsonConvert.convertListNotNull<CommodityListDataScreenDTOOptionsOptions>(json['options']);
	if (options != null) {
		commodityListDataScreenDTOOptions.options = options;
	}
	return commodityListDataScreenDTOOptions;
}

Map<String, dynamic> $CommodityListDataScreenDTOOptionsToJson(CommodityListDataScreenDTOOptions entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['optionName'] = entity.optionName;
	data['type'] = entity.type;
	data['isActive'] = entity.isActive;
	data['hasChild'] = entity.hasChild;
	data['parentId'] = entity.parentId;
	data['root'] = entity.root;
	data['level'] = entity.level;
	data['sort'] = entity.sort;
	data['brandSort'] = entity.brandSort;
	data['options'] =  entity.options?.map((v) => v.toJson()).toList();
	return data;
}

CommodityListDataScreenDTOOptionsOptions $CommodityListDataScreenDTOOptionsOptionsFromJson(Map<String, dynamic> json) {
	final CommodityListDataScreenDTOOptionsOptions commodityListDataScreenDTOOptionsOptions = CommodityListDataScreenDTOOptionsOptions();
	final String? id = jsonConvert.convert<String>(json['id']);
	if (id != null) {
		commodityListDataScreenDTOOptionsOptions.id = id;
	}
	final String? optionName = jsonConvert.convert<String>(json['optionName']);
	if (optionName != null) {
		commodityListDataScreenDTOOptionsOptions.optionName = optionName;
	}
	final int? type = jsonConvert.convert<int>(json['type']);
	if (type != null) {
		commodityListDataScreenDTOOptionsOptions.type = type;
	}
	final int? isActive = jsonConvert.convert<int>(json['isActive']);
	if (isActive != null) {
		commodityListDataScreenDTOOptionsOptions.isActive = isActive;
	}
	final bool? hasChild = jsonConvert.convert<bool>(json['hasChild']);
	if (hasChild != null) {
		commodityListDataScreenDTOOptionsOptions.hasChild = hasChild;
	}
	final String? parentId = jsonConvert.convert<String>(json['parentId']);
	if (parentId != null) {
		commodityListDataScreenDTOOptionsOptions.parentId = parentId;
	}
	final bool? root = jsonConvert.convert<bool>(json['root']);
	if (root != null) {
		commodityListDataScreenDTOOptionsOptions.root = root;
	}
	final int? level = jsonConvert.convert<int>(json['level']);
	if (level != null) {
		commodityListDataScreenDTOOptionsOptions.level = level;
	}
	final dynamic? sort = jsonConvert.convert<dynamic>(json['sort']);
	if (sort != null) {
		commodityListDataScreenDTOOptionsOptions.sort = sort;
	}
	final int? brandSort = jsonConvert.convert<int>(json['brandSort']);
	if (brandSort != null) {
		commodityListDataScreenDTOOptionsOptions.brandSort = brandSort;
	}
	final dynamic? options = jsonConvert.convert<dynamic>(json['options']);
	if (options != null) {
		commodityListDataScreenDTOOptionsOptions.options = options;
	}
	return commodityListDataScreenDTOOptionsOptions;
}

Map<String, dynamic> $CommodityListDataScreenDTOOptionsOptionsToJson(CommodityListDataScreenDTOOptionsOptions entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['optionName'] = entity.optionName;
	data['type'] = entity.type;
	data['isActive'] = entity.isActive;
	data['hasChild'] = entity.hasChild;
	data['parentId'] = entity.parentId;
	data['root'] = entity.root;
	data['level'] = entity.level;
	data['sort'] = entity.sort;
	data['brandSort'] = entity.brandSort;
	data['options'] = entity.options;
	return data;
}

CommodityListDataScreenDTOPriceOption $CommodityListDataScreenDTOPriceOptionFromJson(Map<String, dynamic> json) {
	final CommodityListDataScreenDTOPriceOption commodityListDataScreenDTOPriceOption = CommodityListDataScreenDTOPriceOption();
	final String? optionName = jsonConvert.convert<String>(json['optionName']);
	if (optionName != null) {
		commodityListDataScreenDTOPriceOption.optionName = optionName;
	}
	final dynamic? maxPrice = jsonConvert.convert<dynamic>(json['maxPrice']);
	if (maxPrice != null) {
		commodityListDataScreenDTOPriceOption.maxPrice = maxPrice;
	}
	final dynamic? minPrice = jsonConvert.convert<dynamic>(json['minPrice']);
	if (minPrice != null) {
		commodityListDataScreenDTOPriceOption.minPrice = minPrice;
	}
	final bool? isSelectFromList = jsonConvert.convert<bool>(json['isSelectFromList']);
	if (isSelectFromList != null) {
		commodityListDataScreenDTOPriceOption.isSelectFromList = isSelectFromList;
	}
	final List<CommodityListDataScreenDTOPriceOptionRangeDTOList>? rangeDTOList = jsonConvert.convertListNotNull<CommodityListDataScreenDTOPriceOptionRangeDTOList>(json['rangeDTOList']);
	if (rangeDTOList != null) {
		commodityListDataScreenDTOPriceOption.rangeDTOList = rangeDTOList;
	}
	return commodityListDataScreenDTOPriceOption;
}

Map<String, dynamic> $CommodityListDataScreenDTOPriceOptionToJson(CommodityListDataScreenDTOPriceOption entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['optionName'] = entity.optionName;
	data['maxPrice'] = entity.maxPrice;
	data['minPrice'] = entity.minPrice;
	data['isSelectFromList'] = entity.isSelectFromList;
	data['rangeDTOList'] =  entity.rangeDTOList?.map((v) => v.toJson()).toList();
	return data;
}

CommodityListDataScreenDTOPriceOptionRangeDTOList $CommodityListDataScreenDTOPriceOptionRangeDTOListFromJson(Map<String, dynamic> json) {
	final CommodityListDataScreenDTOPriceOptionRangeDTOList commodityListDataScreenDTOPriceOptionRangeDTOList = CommodityListDataScreenDTOPriceOptionRangeDTOList();
	final String? id = jsonConvert.convert<String>(json['id']);
	if (id != null) {
		commodityListDataScreenDTOPriceOptionRangeDTOList.id = id;
	}
	final String? optionName = jsonConvert.convert<String>(json['optionName']);
	if (optionName != null) {
		commodityListDataScreenDTOPriceOptionRangeDTOList.optionName = optionName;
	}
	final int? maxPrice = jsonConvert.convert<int>(json['maxPrice']);
	if (maxPrice != null) {
		commodityListDataScreenDTOPriceOptionRangeDTOList.maxPrice = maxPrice;
	}
	final int? minPrice = jsonConvert.convert<int>(json['minPrice']);
	if (minPrice != null) {
		commodityListDataScreenDTOPriceOptionRangeDTOList.minPrice = minPrice;
	}
	final int? isActive = jsonConvert.convert<int>(json['isActive']);
	if (isActive != null) {
		commodityListDataScreenDTOPriceOptionRangeDTOList.isActive = isActive;
	}
	return commodityListDataScreenDTOPriceOptionRangeDTOList;
}

Map<String, dynamic> $CommodityListDataScreenDTOPriceOptionRangeDTOListToJson(CommodityListDataScreenDTOPriceOptionRangeDTOList entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['optionName'] = entity.optionName;
	data['maxPrice'] = entity.maxPrice;
	data['minPrice'] = entity.minPrice;
	data['isActive'] = entity.isActive;
	return data;
}