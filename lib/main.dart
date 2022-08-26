import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'screens/catalog_screen.dart';
import 'screens/main_screen.dart';
import 'screens/member_screen.dart';

void main() {
  runApp(const AcademicSystem());
}

class AcademicSystem extends StatelessWidget {
  const AcademicSystem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: _themeData(),
      debugShowCheckedModeBanner: false,
      home: const MainScreen(),
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/catalogs',
          page: () => const CatalogScreen(),
        ),
        GetPage(
          name: '/members',
          page: () => const MemberScreen(),
        ),
      ],
    );
  }

  ThemeData _themeData() {
    return ThemeData(
      popupMenuTheme: const PopupMenuThemeData(color: Color(0xFFF8F2E1)),
      textTheme: GoogleFonts.inconsolataTextTheme().copyWith(
        caption: GoogleFonts.tekoTextTheme().caption,
        subtitle1: GoogleFonts.tekoTextTheme().subtitle1,
        subtitle2: GoogleFonts.tekoTextTheme().subtitle2,
        headline2: GoogleFonts.tekoTextTheme().headline2,
        headline3: GoogleFonts.tekoTextTheme().headline3,
        headline6: GoogleFonts.tekoTextTheme().headline6,
      ),
      backgroundColor: const Color(0xFFF8F2E1),
      primaryColor: const Color(0xFFFADBB7),
      hoverColor: const Color(0xFFC2C77B),
      scaffoldBackgroundColor: const Color(0xFFDED8CA),
      appBarTheme: const AppBarTheme(
        color: Color(0xFFFADBB7),
      ),
      buttonTheme: const ButtonThemeData(
        buttonColor: Color(0xFFAD8164),
        hoverColor: Color(0xFF425f5a),
        padding: EdgeInsets.all(16.0),
        textTheme: ButtonTextTheme.normal,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
        ),
      ),
      colorScheme: const ColorScheme.light().copyWith(
        primary: const Color(0xFFFADBB7),
        secondary: const Color(0xFFC2C77B),
        tertiary: const Color(0xFF7a9d69),
        background: const Color(0xFFECD2AC),
        primaryContainer: const Color(0xFFF8DAB6),
      ),
    );
  }
}
