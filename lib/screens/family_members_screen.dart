import 'package:flutter/material.dart';
import '../component/family_members_datamodel.dart';
import 'package:audioplayers/audioplayers.dart';


class FamilyMembers extends StatefulWidget {
  const FamilyMembers({super.key});
  static const route = '/FamilyMembers';
  @override
  State<FamilyMembers> createState() => _FamilyMembersState();
}

class _FamilyMembersState extends State<FamilyMembers> {
  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 8,
        title: Text(
          'Family Members',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: Colors.green.shade200,
      ),
      body: Container(
        color: Colors.orange.shade100,
        child: ListView.builder(
          itemCount: familyData.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 8,
              margin: EdgeInsets.all(5),
              color: Colors.green.shade300,
              child: ListTile(
                leading: Image.asset(familyData[index].image, width: 70, height: 70),
                title: Text(familyData[index].jpName, style: TextStyle(fontSize: 25)),
                subtitle: Text(
                  familyData[index].enName,
                  style: TextStyle(fontSize: 19),
                ),
                trailing: IconButton(
                  splashColor: Colors.redAccent,
                  onPressed: ()  {
                    player.play(AssetSource(familyData[index].sound));
                  },
                  icon: Icon(Icons.play_arrow, color: Colors.white, size: 30),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
