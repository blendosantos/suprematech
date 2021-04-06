import 'package:flutter/material.dart';
import 'package:suprematech/app/themes/colors.dart';

class FontsCustom {
  const FontsCustom();

  static final title = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 20,
    color: ColorsCustom.greyDark,
    fontWeight: FontWeight.w900,
  );

  static final subTitle = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 14,
    color: ColorsCustom.greyMedium,
  );

  static final subTitleClients = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 14,
    color: Colors.white,
  );

  static final titleClients = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 20,
    color: Colors.white,
    fontWeight: FontWeight.w900,
  );
}
