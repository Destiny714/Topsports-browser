import 'package:topsports/generated/json/base/json_field.dart';
import 'package:topsports/generated/json/commodity_list_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class CommodityListEntity {

	int? code;
	int? bizCode;
	String? bizMsg;
	CommodityListData? data;
  
  CommodityListEntity();

  factory CommodityListEntity.fromJson(Map<String, dynamic> json) => $CommodityListEntityFromJson(json);

  Map<String, dynamic> toJson() => $CommodityListEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class CommodityListData {

	int? searchResultType;
	CommodityListDataSpu? spu;
	CommodityListDataScreenDTO? screenDTO;
  
  CommodityListData();

  factory CommodityListData.fromJson(Map<String, dynamic> json) => $CommodityListDataFromJson(json);

  Map<String, dynamic> toJson() => $CommodityListDataToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class CommodityListDataSpu {

	CommodityListDataSpuPagination? pagination;
	List<CommodityListDataSpuList>? list;
  
  CommodityListDataSpu();

  factory CommodityListDataSpu.fromJson(Map<String, dynamic> json) => $CommodityListDataSpuFromJson(json);

  Map<String, dynamic> toJson() => $CommodityListDataSpuToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class CommodityListDataSpuPagination {

	int? current;
	int? pageSize;
	int? total;
  
  CommodityListDataSpuPagination();

  factory CommodityListDataSpuPagination.fromJson(Map<String, dynamic> json) => $CommodityListDataSpuPaginationFromJson(json);

  Map<String, dynamic> toJson() => $CommodityListDataSpuPaginationToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class CommodityListDataSpuList {

	String? id;
	String? productCode;
	String? productNo;
	String? productName;
	String? thumbnailPath;
	double? tagPrice;
	double? salePrice;
	String? shopNo;
	String? shopName;
	dynamic shopAddress;
	String? proName;
	String? proNameApp;
	String? zoneQsLevel;
	String? brandDetailNo;
	int? isTop;
	String? activityTypeStr;
	String? templateNo;
	String? proNo;
	bool? ifActivity;
  
  CommodityListDataSpuList();

  factory CommodityListDataSpuList.fromJson(Map<String, dynamic> json) => $CommodityListDataSpuListFromJson(json);

  Map<String, dynamic> toJson() => $CommodityListDataSpuListToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class CommodityListDataScreenDTO {

	List<CommodityListDataScreenDTOOptions>? options;
	CommodityListDataScreenDTOPriceOption? priceOption;
  
  CommodityListDataScreenDTO();

  factory CommodityListDataScreenDTO.fromJson(Map<String, dynamic> json) => $CommodityListDataScreenDTOFromJson(json);

  Map<String, dynamic> toJson() => $CommodityListDataScreenDTOToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class CommodityListDataScreenDTOOptions {

	String? id;
	String? optionName;
	int? type;
	dynamic isActive;
	bool? hasChild;
	dynamic parentId;
	bool? root;
	int? level;
	dynamic sort;
	dynamic brandSort;
	List<CommodityListDataScreenDTOOptionsOptions>? options;
  
  CommodityListDataScreenDTOOptions();

  factory CommodityListDataScreenDTOOptions.fromJson(Map<String, dynamic> json) => $CommodityListDataScreenDTOOptionsFromJson(json);

  Map<String, dynamic> toJson() => $CommodityListDataScreenDTOOptionsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class CommodityListDataScreenDTOOptionsOptions {

	String? id;
	String? optionName;
	int? type;
	int? isActive;
	bool? hasChild;
	String? parentId;
	bool? root;
	int? level;
	dynamic sort;
	int? brandSort;
	dynamic options;
  
  CommodityListDataScreenDTOOptionsOptions();

  factory CommodityListDataScreenDTOOptionsOptions.fromJson(Map<String, dynamic> json) => $CommodityListDataScreenDTOOptionsOptionsFromJson(json);

  Map<String, dynamic> toJson() => $CommodityListDataScreenDTOOptionsOptionsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class CommodityListDataScreenDTOPriceOption {

	String? optionName;
	dynamic maxPrice;
	dynamic minPrice;
	bool? isSelectFromList;
	List<CommodityListDataScreenDTOPriceOptionRangeDTOList>? rangeDTOList;
  
  CommodityListDataScreenDTOPriceOption();

  factory CommodityListDataScreenDTOPriceOption.fromJson(Map<String, dynamic> json) => $CommodityListDataScreenDTOPriceOptionFromJson(json);

  Map<String, dynamic> toJson() => $CommodityListDataScreenDTOPriceOptionToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class CommodityListDataScreenDTOPriceOptionRangeDTOList {

	String? id;
	String? optionName;
	int? maxPrice;
	int? minPrice;
	int? isActive;
  
  CommodityListDataScreenDTOPriceOptionRangeDTOList();

  factory CommodityListDataScreenDTOPriceOptionRangeDTOList.fromJson(Map<String, dynamic> json) => $CommodityListDataScreenDTOPriceOptionRangeDTOListFromJson(json);

  Map<String, dynamic> toJson() => $CommodityListDataScreenDTOPriceOptionRangeDTOListToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}