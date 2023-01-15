import 'package:flutter/material.dart';
class AppColor {
  static const MaterialColor colorMain = MaterialColor(
    0xffc0e1d8, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: Color(0xffadcbc2),//10%
      100:  Color(0xff9ab4ad),//20%
      200:  Color(0xff869e97),//30%
      300:  Color(0xff738782),//40%
      400:  Color(0xff60716c),//50%
      500:  Color(0xff4d5a56),//60%
      600:  Color(0xff3a4341),//70%
      700:  Color(0xff262d2b),//80%
      800:  Color(0xff131616),//90%
      900:  Color(0xff000000),//100%
    },
  );
}