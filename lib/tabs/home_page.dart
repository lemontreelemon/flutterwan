import 'dart:convert';
import 'dart:developer';

import 'package:banner_carousel/banner_carousel.dart';
import 'package:flutter/material.dart';
import 'package:flutterwan/bean/home_article_list_bean_entity.dart';
import 'package:flutterwan/net/net_manager.dart';
import 'package:get/get.dart';

import '../bean/home_banner_entity.dart';
import '../res/local_color.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //获取数据，列表数据
  HomeArticleListBeanEntity? homeArticleList;
  HomeBannerEntity? homeBanner;

  @override
  void initState() {
    getHomeArticleList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return getView();
  }

  getHomeArticleList() async {
    // void _initData() async {
    //   var map = Map();
    //   map["size"] = 10;
    //   map["page"] = 1;
    //   var res = await HttpUtils.get("/data/福利/:size/:page",map);
    //   LogUtils.log(res["result"]);
    //   setState(() {
    //     _imageList=res["result"];
    //   });
    // }
    print("lwg print");
    debugPrint("lwg debugPrint");
    log("lwg  log");
    var map = Map();
    map["index"] = 1;
    String url = "https://www.wanandroid.com/article/list/:index/json";
    String bannerUrl = "https://www.wanandroid.com/banner/json";
    try {
      url = url.replaceAll(":index", "${map["index"]}");
    } catch (e, s) {
      print(e.toString());
      print(s);
    }

    var response = await Future.wait(
        [NetManager.dio.get(url), NetManager.dio.get(bannerUrl)]);

    var homeArticle =
        HomeArticleListBeanEntity.fromJson(json.decode(response[0].toString()));
    var homeBanner =
        HomeBannerEntity.fromJson(json.decode(response[1].toString()));
    setState(() {
      homeArticleList = homeArticle;
      this.homeBanner = homeBanner;
    });
  }

  Widget getView() {
    if (homeArticleList == null) {
      return const Center(
        child: Text("暂时没有数据"),
      );
    } else if (homeArticleList?.errorCode != 0) {
      return const Center(
        child: Text("接口错误"),
      );
    } else {
      return ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          if(index == 0){
            List<BannerModel> lists = [];
            homeBanner?.data?.forEach((element) {
              lists.add(BannerModel(imagePath: element.imagePath,id: "${element.id}"));
            });
            return Padding(padding: const EdgeInsets.fromLTRB(0, 10, 0, 5),
            child: BannerCarousel(
              banners: lists,
              onTap: (id){
                String? bannerPageUrl = homeBanner?.data?.firstWhereOrNull((element) => id == "${element.id}")?.url;
                if(bannerPageUrl != null){
                  Get.toNamed("/page/webview",arguments: bannerPageUrl);
                }
              },
            ),
            );
          }else {
            var itemdata = homeArticleList?.data?.datas?[index-1];
            return getItemView(itemdata!);
          }
        },
        itemCount: getItemSize(homeArticleList?.data?.datas?.length),
      );
    }
  }

  Widget getItemView(HomeArticleListBeanDataDatas itemdata) {
    return InkWell(
      //item 的点击事件
      onTap: () {
        //跳转 webview，然后显示加载链接
        Get.toNamed("/page/webview", arguments: itemdata.link);
      },
      child: Container(
        width: 2000,
        margin: const EdgeInsets.fromLTRB(16, 3, 16, 3),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: LocalColor.grey_99, width: 1),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.topLeft,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.supervised_user_circle_sharp,
                      color: Colors.blue,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                      child: Text(itemdata.author),
                    )
                  ],
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Text("${itemdata.publishTime}"),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
              child: Text(itemdata.title),
            ),
            getPublisher(itemdata.shareUser)
          ],
        ),
      ),
    );
  }

  Widget getPublisher(String? shareUser) {
    if (shareUser == null || shareUser.isEmpty) {
      return const SizedBox();
    } else {
      return Align(
        alignment: Alignment(-1, 1),
        heightFactor: 1.2,
        child: Text("${shareUser}"),
      );
    }
  }

  int getItemSize(int? length) {
    if (length == null) {
      return 1;
    } else {
      return length + 1;
    }
  }
}
