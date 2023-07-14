import 'package:flutterwan/generated/json/base/json_field.dart';
import 'package:flutterwan/generated/json/home_banner_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class HomeBannerEntity {
	late List<HomeBannerData> data;
	late int errorCode;
	late String errorMsg;

	HomeBannerEntity();

	factory HomeBannerEntity.fromJson(Map<String, dynamic> json) => $HomeBannerEntityFromJson(json);

	Map<String, dynamic> toJson() => $HomeBannerEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class HomeBannerData {
	late String desc;
	late int id;
	late String imagePath;
	late int isVisible;
	late int order;
	late String title;
	late int type;
	late String url;

	HomeBannerData();

	factory HomeBannerData.fromJson(Map<String, dynamic> json) => $HomeBannerDataFromJson(json);

	Map<String, dynamic> toJson() => $HomeBannerDataToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}