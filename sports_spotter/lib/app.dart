import 'package:flutter/material.dart';
import 'package:sports_spotter/constants.dart';
import 'package:sports_spotter/screens/homescreen.dart';
import 'package:sports_spotter/screens/profilescreen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      home: const HomeScreen(),
      theme: ThemeData(
          colorScheme: ColorScheme(
              brightness: Brightness.light,
              primary: primaryColor,
              onPrimary: Colors.white,
              secondary: secondaryColor,
              onSecondary: Colors.black,
              error: Colors.red.shade300,
              onError: Colors.black,
              background: Colors.white,
              onBackground: Colors.black,
              surface: Colors.white,
              onSurface: Colors.black),
          useMaterial3: true,
          dividerTheme:
              DividerThemeData(color: Colors.grey.shade400, thickness: 0.5),
          appBarTheme: const AppBarTheme(
              foregroundColor: Colors.black,
              centerTitle: true,
              titleTextStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20)),
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(56),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)))),
          outlinedButtonTheme: OutlinedButtonThemeData(
              style: OutlinedButton.styleFrom(
                  minimumSize: const Size.fromHeight(56),
                  side: BorderSide(color: Colors.blue.shade800, width: 1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)))),
          textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)))),
          listTileTheme: ListTileThemeData(
            iconColor: Colors.grey.shade800,
          ),
          dialogTheme: DialogTheme(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16))),
          inputDecorationTheme: InputDecorationTheme(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(16))),
          cardTheme: CardTheme(
            elevation: 0,
            color: Colors.grey.shade300,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          )),
      routes: {'/profile/': (context) => const ProfileScreen()},
    );
  }
}
