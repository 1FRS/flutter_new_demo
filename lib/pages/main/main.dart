import 'package:flutter/material.dart';
import 'package:flutter_news/common/api/news.dart';
import 'package:flutter_news/common/entity/entitys.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  late NewsPageListRequestEntity _newsPageList; //新闻翻页
  late NewsRecommendRequestEntity _newsRecommend; //新闻推荐
  late List<CategoryResponseEntity> _categories;
  late List<ChannelResponseEntity> _channels;
  late String _selCategoryCode;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  //初始化读取所有数据
  _loadAllData() async {
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  //分类菜单
  Widget _buildCategories(){
    return Container();
  }

  //推荐阅读
  Widget _buildRecommend(){
    return Container();
  }

  //频道
  Widget _buildChannels(){
    return Container();
  }

  //新闻列表
  Widget _buildNewsList(){
    return Container();
  }

  //邮件订阅
  Widget _buildEmailSubscribe(){
    return Container();
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _buildCategories(),
          _buildRecommend(),
          _buildChannels(),
          _buildNewsList(),
          _buildEmailSubscribe(),
        ],
      ),
    );
  }
}
