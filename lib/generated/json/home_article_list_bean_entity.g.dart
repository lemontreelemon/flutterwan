import 'package:flutterwan/generated/json/base/json_convert_content.dart';
import 'package:flutterwan/bean/home_article_list_bean_entity.dart';

HomeArticleListBeanEntity $HomeArticleListBeanEntityFromJson(Map<String, dynamic> json) {
	final HomeArticleListBeanEntity homeArticleListBeanEntity = HomeArticleListBeanEntity();
	final HomeArticleListBeanData? data = jsonConvert.convert<HomeArticleListBeanData>(json['data']);
	if (data != null) {
		homeArticleListBeanEntity.data = data;
	}
	final int? errorCode = jsonConvert.convert<int>(json['errorCode']);
	if (errorCode != null) {
		homeArticleListBeanEntity.errorCode = errorCode;
	}
	final String? errorMsg = jsonConvert.convert<String>(json['errorMsg']);
	if (errorMsg != null) {
		homeArticleListBeanEntity.errorMsg = errorMsg;
	}
	return homeArticleListBeanEntity;
}

Map<String, dynamic> $HomeArticleListBeanEntityToJson(HomeArticleListBeanEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['data'] = entity.data.toJson();
	data['errorCode'] = entity.errorCode;
	data['errorMsg'] = entity.errorMsg;
	return data;
}

HomeArticleListBeanData $HomeArticleListBeanDataFromJson(Map<String, dynamic> json) {
	final HomeArticleListBeanData homeArticleListBeanData = HomeArticleListBeanData();
	final int? curPage = jsonConvert.convert<int>(json['curPage']);
	if (curPage != null) {
		homeArticleListBeanData.curPage = curPage;
	}
	final List<HomeArticleListBeanDataDatas>? datas = jsonConvert.convertListNotNull<HomeArticleListBeanDataDatas>(json['datas']);
	if (datas != null) {
		homeArticleListBeanData.datas = datas;
	}
	final int? offset = jsonConvert.convert<int>(json['offset']);
	if (offset != null) {
		homeArticleListBeanData.offset = offset;
	}
	final bool? over = jsonConvert.convert<bool>(json['over']);
	if (over != null) {
		homeArticleListBeanData.over = over;
	}
	final int? pageCount = jsonConvert.convert<int>(json['pageCount']);
	if (pageCount != null) {
		homeArticleListBeanData.pageCount = pageCount;
	}
	final int? size = jsonConvert.convert<int>(json['size']);
	if (size != null) {
		homeArticleListBeanData.size = size;
	}
	final int? total = jsonConvert.convert<int>(json['total']);
	if (total != null) {
		homeArticleListBeanData.total = total;
	}
	return homeArticleListBeanData;
}

Map<String, dynamic> $HomeArticleListBeanDataToJson(HomeArticleListBeanData entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['curPage'] = entity.curPage;
	data['datas'] =  entity.datas.map((v) => v.toJson()).toList();
	data['offset'] = entity.offset;
	data['over'] = entity.over;
	data['pageCount'] = entity.pageCount;
	data['size'] = entity.size;
	data['total'] = entity.total;
	return data;
}

HomeArticleListBeanDataDatas $HomeArticleListBeanDataDatasFromJson(Map<String, dynamic> json) {
	final HomeArticleListBeanDataDatas homeArticleListBeanDataDatas = HomeArticleListBeanDataDatas();
	final bool? adminAdd = jsonConvert.convert<bool>(json['adminAdd']);
	if (adminAdd != null) {
		homeArticleListBeanDataDatas.adminAdd = adminAdd;
	}
	final String? apkLink = jsonConvert.convert<String>(json['apkLink']);
	if (apkLink != null) {
		homeArticleListBeanDataDatas.apkLink = apkLink;
	}
	final int? audit = jsonConvert.convert<int>(json['audit']);
	if (audit != null) {
		homeArticleListBeanDataDatas.audit = audit;
	}
	final String? author = jsonConvert.convert<String>(json['author']);
	if (author != null) {
		homeArticleListBeanDataDatas.author = author;
	}
	final bool? canEdit = jsonConvert.convert<bool>(json['canEdit']);
	if (canEdit != null) {
		homeArticleListBeanDataDatas.canEdit = canEdit;
	}
	final int? chapterId = jsonConvert.convert<int>(json['chapterId']);
	if (chapterId != null) {
		homeArticleListBeanDataDatas.chapterId = chapterId;
	}
	final String? chapterName = jsonConvert.convert<String>(json['chapterName']);
	if (chapterName != null) {
		homeArticleListBeanDataDatas.chapterName = chapterName;
	}
	final bool? collect = jsonConvert.convert<bool>(json['collect']);
	if (collect != null) {
		homeArticleListBeanDataDatas.collect = collect;
	}
	final int? courseId = jsonConvert.convert<int>(json['courseId']);
	if (courseId != null) {
		homeArticleListBeanDataDatas.courseId = courseId;
	}
	final String? desc = jsonConvert.convert<String>(json['desc']);
	if (desc != null) {
		homeArticleListBeanDataDatas.desc = desc;
	}
	final String? descMd = jsonConvert.convert<String>(json['descMd']);
	if (descMd != null) {
		homeArticleListBeanDataDatas.descMd = descMd;
	}
	final String? envelopePic = jsonConvert.convert<String>(json['envelopePic']);
	if (envelopePic != null) {
		homeArticleListBeanDataDatas.envelopePic = envelopePic;
	}
	final bool? fresh = jsonConvert.convert<bool>(json['fresh']);
	if (fresh != null) {
		homeArticleListBeanDataDatas.fresh = fresh;
	}
	final String? host = jsonConvert.convert<String>(json['host']);
	if (host != null) {
		homeArticleListBeanDataDatas.host = host;
	}
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		homeArticleListBeanDataDatas.id = id;
	}
	final bool? isAdminAdd = jsonConvert.convert<bool>(json['isAdminAdd']);
	if (isAdminAdd != null) {
		homeArticleListBeanDataDatas.isAdminAdd = isAdminAdd;
	}
	final String? link = jsonConvert.convert<String>(json['link']);
	if (link != null) {
		homeArticleListBeanDataDatas.link = link;
	}
	final String? niceDate = jsonConvert.convert<String>(json['niceDate']);
	if (niceDate != null) {
		homeArticleListBeanDataDatas.niceDate = niceDate;
	}
	final String? niceShareDate = jsonConvert.convert<String>(json['niceShareDate']);
	if (niceShareDate != null) {
		homeArticleListBeanDataDatas.niceShareDate = niceShareDate;
	}
	final String? origin = jsonConvert.convert<String>(json['origin']);
	if (origin != null) {
		homeArticleListBeanDataDatas.origin = origin;
	}
	final String? prefix = jsonConvert.convert<String>(json['prefix']);
	if (prefix != null) {
		homeArticleListBeanDataDatas.prefix = prefix;
	}
	final String? projectLink = jsonConvert.convert<String>(json['projectLink']);
	if (projectLink != null) {
		homeArticleListBeanDataDatas.projectLink = projectLink;
	}
	final int? publishTime = jsonConvert.convert<int>(json['publishTime']);
	if (publishTime != null) {
		homeArticleListBeanDataDatas.publishTime = publishTime;
	}
	final int? realSuperChapterId = jsonConvert.convert<int>(json['realSuperChapterId']);
	if (realSuperChapterId != null) {
		homeArticleListBeanDataDatas.realSuperChapterId = realSuperChapterId;
	}
	final int? selfVisible = jsonConvert.convert<int>(json['selfVisible']);
	if (selfVisible != null) {
		homeArticleListBeanDataDatas.selfVisible = selfVisible;
	}
	final int? shareDate = jsonConvert.convert<int>(json['shareDate']);
	if (shareDate != null) {
		homeArticleListBeanDataDatas.shareDate = shareDate;
	}
	final String? shareUser = jsonConvert.convert<String>(json['shareUser']);
	if (shareUser != null) {
		homeArticleListBeanDataDatas.shareUser = shareUser;
	}
	final int? superChapterId = jsonConvert.convert<int>(json['superChapterId']);
	if (superChapterId != null) {
		homeArticleListBeanDataDatas.superChapterId = superChapterId;
	}
	final String? superChapterName = jsonConvert.convert<String>(json['superChapterName']);
	if (superChapterName != null) {
		homeArticleListBeanDataDatas.superChapterName = superChapterName;
	}
	final List<HomeArticleListBeanDataDatasTags>? tags = jsonConvert.convertListNotNull<HomeArticleListBeanDataDatasTags>(json['tags']);
	if (tags != null) {
		homeArticleListBeanDataDatas.tags = tags;
	}
	final String? title = jsonConvert.convert<String>(json['title']);
	if (title != null) {
		homeArticleListBeanDataDatas.title = title;
	}
	final int? type = jsonConvert.convert<int>(json['type']);
	if (type != null) {
		homeArticleListBeanDataDatas.type = type;
	}
	final int? userId = jsonConvert.convert<int>(json['userId']);
	if (userId != null) {
		homeArticleListBeanDataDatas.userId = userId;
	}
	final int? visible = jsonConvert.convert<int>(json['visible']);
	if (visible != null) {
		homeArticleListBeanDataDatas.visible = visible;
	}
	final int? zan = jsonConvert.convert<int>(json['zan']);
	if (zan != null) {
		homeArticleListBeanDataDatas.zan = zan;
	}
	return homeArticleListBeanDataDatas;
}

Map<String, dynamic> $HomeArticleListBeanDataDatasToJson(HomeArticleListBeanDataDatas entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['adminAdd'] = entity.adminAdd;
	data['apkLink'] = entity.apkLink;
	data['audit'] = entity.audit;
	data['author'] = entity.author;
	data['canEdit'] = entity.canEdit;
	data['chapterId'] = entity.chapterId;
	data['chapterName'] = entity.chapterName;
	data['collect'] = entity.collect;
	data['courseId'] = entity.courseId;
	data['desc'] = entity.desc;
	data['descMd'] = entity.descMd;
	data['envelopePic'] = entity.envelopePic;
	data['fresh'] = entity.fresh;
	data['host'] = entity.host;
	data['id'] = entity.id;
	data['isAdminAdd'] = entity.isAdminAdd;
	data['link'] = entity.link;
	data['niceDate'] = entity.niceDate;
	data['niceShareDate'] = entity.niceShareDate;
	data['origin'] = entity.origin;
	data['prefix'] = entity.prefix;
	data['projectLink'] = entity.projectLink;
	data['publishTime'] = entity.publishTime;
	data['realSuperChapterId'] = entity.realSuperChapterId;
	data['selfVisible'] = entity.selfVisible;
	data['shareDate'] = entity.shareDate;
	data['shareUser'] = entity.shareUser;
	data['superChapterId'] = entity.superChapterId;
	data['superChapterName'] = entity.superChapterName;
	data['tags'] =  entity.tags.map((v) => v.toJson()).toList();
	data['title'] = entity.title;
	data['type'] = entity.type;
	data['userId'] = entity.userId;
	data['visible'] = entity.visible;
	data['zan'] = entity.zan;
	return data;
}

HomeArticleListBeanDataDatasTags $HomeArticleListBeanDataDatasTagsFromJson(Map<String, dynamic> json) {
	final HomeArticleListBeanDataDatasTags homeArticleListBeanDataDatasTags = HomeArticleListBeanDataDatasTags();
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		homeArticleListBeanDataDatasTags.name = name;
	}
	final String? url = jsonConvert.convert<String>(json['url']);
	if (url != null) {
		homeArticleListBeanDataDatasTags.url = url;
	}
	return homeArticleListBeanDataDatasTags;
}

Map<String, dynamic> $HomeArticleListBeanDataDatasTagsToJson(HomeArticleListBeanDataDatasTags entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['name'] = entity.name;
	data['url'] = entity.url;
	return data;
}