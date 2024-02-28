
import 'package:flutter/material.dart';

/// 透明背景 AppBar
PreferredSizeWidget transparentAppBar({
  required BuildContext context,
  required Widget title,
   Widget? leading,
  required List<Widget> actions,
}) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    title: title != null
        ? Center(
      child: title,
    )
        : null,
    leading: leading,
    actions: actions,
  );
}