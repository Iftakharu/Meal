import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meals_riverpod/screen/tabs_screen.dart';


final theme=ThemeData(
  colorScheme: ColorScheme.fromSeed(
      //brightness: Brightness.dark,
      seedColor: const Color.fromARGB(255, 131, 57, 0),
  ),
  textTheme: GoogleFonts.latoTextTheme(),
);

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meals',
      theme: theme,
      home: const TabsScreen(),
    );
  }
}
