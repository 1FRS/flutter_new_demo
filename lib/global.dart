
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Global{

  //用户配置


  static bool get isRelease => const bool.fromEnvironment("dart.vm.priduct");

  static Future init() async{
    //运行初始，延迟渲染
    WidgetsFlutterBinding.ensureInitialized();

    //工具初始化

    //读取离线用户信息

    //http缓存

    //android 状态栏为透明沉浸
    if(Platform.isAndroid){
      SystemUiOverlayStyle systemUiOverlayStyle =
          const SystemUiOverlayStyle(statusBarColor: Colors.transparent);
      SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
    }
    //持久化用户信息

  }
}