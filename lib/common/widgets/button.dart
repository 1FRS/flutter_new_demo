import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/screen.dart';
import '../values/borders.dart';
import '../values/colors.dart';
import '../values/radii.dart';

///扁平圆角
Widget btnFlatButtonWidget({
  required VoidCallback onPressed,
  double width = 140,
  double height = 44,
  Color gbColor = AppColors.primaryElement,
  String title = "button",
  Color fontColor = AppColors.primaryElementText,
  double fontSize = 18,
  String fontName = "Montserrat",
  FontWeight fontWeight = FontWeight.w400,
}){
  return Container(
    width: duSetWidth(width),
    height: duSetHeight(height),
    child: TextButton(
      style: TextButton.styleFrom(
        backgroundColor: gbColor,
        shape: const RoundedRectangleBorder(
          borderRadius: Radii.k6pxRadius,
        ),
      ),
      onPressed: onPressed,
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: fontColor,
          fontFamily: fontName,
          fontWeight: fontWeight,
          fontSize: duSetFontSize(fontSize),
          height: 1,
        ),
      ),
    ),
  );
}


///第三方
Widget btnFlatButtonBorderOnlyWidget({
  required VoidCallback onPressed,
  double width = 88,
  double height = 44,
  required String iconFileName,
}){
  return Container(
    width: duSetWidth(width),
    height: duSetHeight(height),
    child: TextButton(
        style: TextButton.styleFrom(
          shape: const RoundedRectangleBorder(
            side: Borders.primaryBorder,
            borderRadius: Radii.k6pxRadius,
          ),
        ),
        onPressed: onPressed,
        child: Image.asset( "assets/images/icons-$iconFileName.png",)),
  );
}