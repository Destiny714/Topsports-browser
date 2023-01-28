import 'dart:math';
import 'package:flutter/material.dart';
import 'package:topsports/instances.dart';

extension SizeExtention on num {
  double get w => this * S.size.vw;

  double get h => this * S.size.vh;

  Text text({Color? color, double? size, int? maxLines, FontWeight? weight}) {
    return Text(
      toString(),
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: weight,
        fontFamily: 'misans',
        decoration: TextDecoration.none,
      ),
      maxLines: maxLines,
      overflow: TextOverflow.clip,
    );
  }

  EdgeInsetsGeometry get padding => EdgeInsets.all(toDouble());

  num get price => this % 1 == 0 ? toInt() : this;

  Color get color {
    assert(this % 1 == 0, 'color 序号错误');
    List<Color> colors = Colors.accents.sublist(4, 10).toList();
    return colors.elementAt(toInt());
  }
}

extension StringExtension on String {
  Text text({
    Color? color,
    double? size,
    int? maxLines,
    int? maxLength,
    FontWeight? weight,
    TextDecoration decoration = TextDecoration.none,
  }) {
    String aim = this;
    if (maxLength != null) {
      aim = substring(0, min(maxLength, length));
    }
    return Text(
      aim,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: weight,
        fontFamily: 'misans',
        decoration: decoration,
      ),
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
    );
  }
}

extension WidgetExtension on Widget {
  Padding pd(double? paddingAll, {EdgeInsetsGeometry? padding}) {
    EdgeInsetsGeometry finalPadding = EdgeInsets.zero;
    if (paddingAll != null) {
      finalPadding = EdgeInsets.all(paddingAll);
    } else if (padding != null) {
      finalPadding = padding;
    }
    return Padding(padding: finalPadding, child: this);
  }

  // Badge badge(
  //     {Widget? content,
  //       Color? color,
  //       EdgeInsetsGeometry? padding,
  //       BorderSide borderSide = BorderSide.none}) {
  //   return Badge(
  //     elevation: 0,
  //     badgeContent: content,
  //     badgeColor: color ?? Colors.red,
  //     padding: padding ?? EdgeInsets.all(1.5.w),
  //     borderSide: borderSide,
  //     child: this,
  //   );
  // }

  GestureDetector tap(Function() onTap) {
    return GestureDetector(onTap: onTap, child: this);
  }
}
