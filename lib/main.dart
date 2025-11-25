import 'package:flutter/material.dart';
import 'package:language_learining_app/screens/colors_screen.dart';
import 'package:language_learining_app/screens/family_members_screen.dart';
import 'package:language_learining_app/screens/home_page.dart';
import 'package:language_learining_app/screens/numbers_screen.dart';
import 'package:language_learining_app/screens/phrases_screen.dart';

void main(){
  runApp(const TokuApp());
}

class TokuApp extends StatelessWidget {
  const TokuApp({super.key});
  static const route = '/';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: false),
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.route,
      routes: <String , WidgetBuilder> {
        HomePage.route : (context) => HomePage(),
        MembersScreen.route : (context) => MembersScreen(),
        FamilyMembers.route : (context) => FamilyMembers(),
        ColorsScreen.route : (context) => ColorsScreen(),
        PhrasesScreen.route : (context) => PhrasesScreen(),
      },
    );
  }
}


