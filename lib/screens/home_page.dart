import 'package:flutter/material.dart';
import 'package:language_learining_app/screens/phrases_screen.dart';
import '../component/category_items.dart';
import 'colors_screen.dart';
import 'family_members_screen.dart';
import 'numbers_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const route = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 8,
        title: Text(
          'Toku App',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: Colors.orange.shade500,
      ),
      body: Container(
        color: Color(0xFFFFF4D9),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Category(
                    text: 'Numbers',
                    colors: [Colors.orange, Colors.amber],
                    onTap: () =>
                        Navigator.pushNamed(context, MembersScreen.route),
                  ),
                ),
                Expanded(
                  child: Category(
                    text: 'Family Members',
                    colors: [Colors.green, Colors.greenAccent],
                    onTap: () =>
                        Navigator.pushNamed(context, FamilyMembers.route),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Category(
                    text: 'colors',
                    colors: [Colors.indigo, Colors.lightBlueAccent],
                    onTap: () =>
                        Navigator.pushNamed(context, ColorsScreen.route),
                  ),
                ),
                Expanded(
                  child: Category(
                    text: 'Phrases',
                    colors: [Colors.blue.shade500, Colors.blue.shade100],
                    onTap: () =>
                        Navigator.pushNamed(context, PhrasesScreen.route),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
