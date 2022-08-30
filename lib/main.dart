import 'package:academic_system/constants.dart';
import 'package:academic_system/modules/courses/course_routes.dart';
import 'package:academic_system/modules/home/main_screen.dart';
import 'package:academic_system/modules/student/student_screen.dart';
import 'package:academic_system/modules/subject/subject_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

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
      initialRoute: Routes.home,
      getPages: [
        GetPage(
          name: Routes.home,
          page: () => const MainScreen(),
        ),
        GetPage(
          name: Routes.subjects,
          page: () => const SubjectScreen(),
        ),
        GetPage(
          name: Routes.students,
          page: () => const StudentScreen(),
        ),
        ...CourseRoutes.routes
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
        headline1: GoogleFonts.tekoTextTheme().headline1,
        headline2: GoogleFonts.tekoTextTheme().headline2,
        headline3: GoogleFonts.tekoTextTheme().headline3,
        headline4: GoogleFonts.tekoTextTheme().headline4,
        headline5: GoogleFonts.tekoTextTheme().headline5,
        headline6: GoogleFonts.tekoTextTheme().headline6,
      ),
      backgroundColor: const Color(0xFFF8F2E1),
      primaryColor: const Color(0xFFEBEAE5),
      hoverColor: const Color(0xFFC2C77B),
      scaffoldBackgroundColor: const Color(0xFFDED8CA),
      appBarTheme: const AppBarTheme(
        color: Color(0xFFFADBB7),
      ),
      buttonTheme: const ButtonThemeData(
        buttonColor: Color(0xFFAD8164),
        hoverColor: Color(0xFF425f5a),
        padding: EdgeInsets.all(16.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          backgroundColor: Colors.black,
          fixedSize: const Size(160, 40),
          shape: const StadiumBorder(),
          padding: const EdgeInsets.all(Constraints.padding8),
          elevation: 20,
          primary: const Color(0xFFF8DAB6),
          textStyle: GoogleFonts.tekoTextTheme().button!.copyWith(fontSize: 24),
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
