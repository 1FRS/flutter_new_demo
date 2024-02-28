
import 'package:flutter/cupertino.dart';
import 'package:flutter_news/common/utils/screen.dart';

import '../../common/entity/entitys.dart';
import '../../common/values/colors.dart';

Widget newsCategoriesWidget({
  List<CategoryResponseEntity>? categories,
  String? selCategoryCode,
  required Function(CategoryResponseEntity) onTap,
}){
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: categories!.map<Widget>((e){
        return GestureDetector(
          onTap: onTap(e),
          child: Container(
            alignment: Alignment.center,
            height: duSetHeight(52),
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              e.title,
              style: TextStyle(
                color: selCategoryCode == e.code
                    ? AppColors.secondaryElementText
                    : AppColors.primaryText,
                fontSize: duSetFontSize(18),
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        );
      }).toList(),
    ),
  );
}