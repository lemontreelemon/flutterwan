import 'package:flutterwan/generated/json/base/json_field.dart';
import 'package:flutterwan/generated/json/home_article_list_bean_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class HomeArticleListBeanEntity {
	late HomeArticleListBeanData data;
	late int errorCode;
	late String errorMsg;

	HomeArticleListBeanEntity();

	factory HomeArticleListBeanEntity.fromJson(Map<String, dynamic> json) => $HomeArticleListBeanEntityFromJson(json);

	Map<String, dynamic> toJson() => $HomeArticleListBeanEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class HomeArticleListBeanData {
	late int curPage;
	late List<HomeArticleListBeanDataDatas> datas;
	late int offset;
	late bool over;
	late int pageCount;
	late int size;
	late int total;

	HomeArticleListBeanData();

	factory HomeArticleListBeanData.fromJson(Map<String, dynamic> json) => $HomeArticleListBeanDataFromJson(json);

	Map<String, dynamic> toJson() => $HomeArticleListBeanDataToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class HomeArticleListBeanDataDatas {
	late bool adminAdd;
	late String apkLink;
	late int audit;
	late String author;
	late bool canEdit;
	late int chapterId;
	late String chapterName;
	late bool collect;
	late int courseId;
	late String desc;
	late String descMd;
	late String envelopePic;
	late bool fresh;
	late String host;
	late int id;
	late bool isAdminAdd;
	late String link;
	late String niceDate;
	late String niceShareDate;
	late String origin;
	late String prefix;
	late String projectLink;
	late int publishTime;
	late int realSuperChapterId;
	late int selfVisible;
	late int shareDate;
	late String shareUser;
	late int superChapterId;
	late String superChapterName;
	late List<HomeArticleListBeanDataDatasTags> tags;
	late String title;
	late int type;
	late int userId;
	late int visible;
	late int zan;

	HomeArticleListBeanDataDatas();

	factory HomeArticleListBeanDataDatas.fromJson(Map<String, dynamic> json) => $HomeArticleListBeanDataDatasFromJson(json);

	Map<String, dynamic> toJson() => $HomeArticleListBeanDataDatasToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class HomeArticleListBeanDataDatasTags {
	late String name;
	late String url;

	HomeArticleListBeanDataDatasTags();

	factory HomeArticleListBeanDataDatasTags.fromJson(Map<String, dynamic> json) => $HomeArticleListBeanDataDatasTagsFromJson(json);

	Map<String, dynamic> toJson() => $HomeArticleListBeanDataDatasTagsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}