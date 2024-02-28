
import 'package:flutter/material.dart';
import 'package:flutter_news/common/utils/iconfont.dart';
import 'package:flutter_news/common/utils/screen.dart';
import 'package:flutter_news/common/values/values.dart';
import 'package:flutter_news/common/widgets/app.dart';

import '../account/account.dart';
import '../bookmarks/bookmarks.dart';
import '../category/category.dart';
import '../main/main.dart';

class ApplicationPage extends StatefulWidget {
  const ApplicationPage({super.key});

  @override
  State<ApplicationPage> createState() => _ApplicationPageState();
}

class _ApplicationPageState extends State<ApplicationPage>
    //想要加入动画效果使用过 with SingleTickerProviderStateMixin
    with SingleTickerProviderStateMixin{

  //当前tab页码
  int _page = 0;

  //tab 页标题
  final List<String> _tabTitles = [
    "Welcome",
    "Cagegory",
    "Bookmarks",
    "Account"
  ];
  //页面控制器
  late PageController _pageController;
  //底部导航项目
  final List<BottomNavigationBarItem> _bottomTabs = <BottomNavigationBarItem>[
    const BottomNavigationBarItem(
      icon: Icon(
        Iconfont.home,
        color: AppColors.tabBarElement,
      ),
      activeIcon: Icon(
        Iconfont.home,
        color: AppColors.secondaryElementText,
      ),
      backgroundColor: AppColors.primaryBackground,
      label: "",
    ),
    const BottomNavigationBarItem(
      icon: Icon(
        Iconfont.grid,
        color: AppColors.tabBarElement,
      ),
      activeIcon: Icon(
        Iconfont.grid,
        color: AppColors.secondaryElementText,
      ),
      backgroundColor: AppColors.primaryBackground,
      label: "",
    ),
    const BottomNavigationBarItem(
      icon: Icon(
        Iconfont.tag,
        color: AppColors.tabBarElement,
      ),
      activeIcon: Icon(
        Iconfont.tag,
        color: AppColors.secondaryElementText,
      ),
      backgroundColor: AppColors.primaryBackground,
      label: "",
    ),
    const BottomNavigationBarItem(
      icon: Icon(
        Iconfont.me,
        color: AppColors.tabBarElement,
      ),
      activeIcon: Icon(
        Iconfont.me,
        color: AppColors.secondaryElementText,
      ),
      backgroundColor: AppColors.primaryBackground,
      label: "",
    ),
  ];

  //tab栏动画
  void _handleNavBarTap(int index){
    _pageController.animateToPage(index, duration: const Duration(milliseconds: 200), curve: Curves.ease);
  }
  //tab栏页码切换
  void _handlePageChanged(int page){
    setState(() {
      this._page = page;
    });
  }

  //顶部导航
  PreferredSizeWidget _buildAppBar(){
    return transparentAppBar(
        context: context,
        title: Text(
          _tabTitles[_page],
          style: TextStyle(
            color: AppColors.primaryText,
            fontFamily: 'Montserrat',
            fontSize: duSetFontSize(18.0),
            fontWeight: FontWeight.w600,
          ),
        ),
        actions:[
          IconButton(
              onPressed: (){},
              icon: const Icon(Icons.search,color: AppColors.primaryText,)),
          ]
        );
  }
  //内容页
  Widget _buildPageView(){
    return PageView(
      physics: const NeverScrollableScrollPhysics(),
      controller: _pageController,
      onPageChanged: _handlePageChanged,
      children: const [
        MainPage(),
        CategoryPage(),
        BookmarksPage(),
        AccountPage(),
      ],
    );
  }
  //底部导航
  Widget _buildBottomNavigationBar(){
    return BottomNavigationBar(
        items: _bottomTabs,
        onTap: (index){
          _handlePageChanged(index);
          _pageController.jumpToPage(index);
          } ,
        currentIndex: _page,
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(initialPage: _page);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildPageView(),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }
}
