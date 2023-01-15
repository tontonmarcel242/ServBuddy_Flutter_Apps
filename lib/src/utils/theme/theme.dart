import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:serv_buddy/src/utils/AppColor.dart';

class ServBuddyTheme{

  ServBuddyTheme._();

  static ThemeData lightTheme = ThemeData(
    primarySwatch: AppColor.colorMain,
    brightness: Brightness.light,
    textTheme: TextTheme(
      headline2: GoogleFonts.montserrat(
        color: Colors.black87,
        fontSize: 14,
      ),
      subtitle2: GoogleFonts.poppins(
        color: Colors.black54,
            fontSize: 10,
      ),
    ),
  );
  static ThemeData darkTheme = ThemeData(
    primarySwatch: AppColor.colorMain,
    brightness: Brightness.light,
    textTheme: TextTheme(
      headline2: GoogleFonts.montserrat(
        color: Colors.black87,
        fontSize: 14,
      ),
      subtitle2: GoogleFonts.poppins(
        color: Colors.black54,
        fontSize: 10,
      ),
    ),
  );
}