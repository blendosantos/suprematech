import 'package:flutter/material.dart';
import 'package:suprematech/app/modules/home/home_module.dart';
import 'package:suprematech/app/themes/colors.dart';

class AppWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SupremaTech',
      theme: ThemeData(
        primaryColor: ColorsCustom.purpelDark,
      ),
      home: HomeModule(),
    );
  }

}
