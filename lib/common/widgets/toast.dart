

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../utils/screen.dart';

Future<bool?> toastInfo({required String msg,
  Color backgroundColor = Colors.black,
  Color textColor = Colors.white,}) async {
    return await Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb: 1,
        backgroundColor: backgroundColor,
        textColor: textColor,
        fontSize: duSetFontSize(16),);
}