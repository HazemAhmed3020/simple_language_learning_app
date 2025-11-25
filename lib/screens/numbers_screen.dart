import 'package:flutter/material.dart';
import '../component/numbers_datamodel.dart';
import 'package:audioplayers/audioplayers.dart';

class MembersScreen extends StatefulWidget {
  const MembersScreen({super.key});

  static const route = '/MembersScreen';

  @override
  State<MembersScreen> createState() => _MembersScreenState();
}

class _MembersScreenState extends State<MembersScreen> {
  final AudioPlayer player = AudioPlayer();
  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 8,
        title: Text(
          'Numbers',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: Colors.orange.shade500,
      ),
      body: Container(
        color: Colors.orange.shade100,
        child: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 8,
              margin: EdgeInsets.all(5),
              color: Colors.orangeAccent,
              child: ListTile(
                leading: Image.asset(data[index].image, width: 70, height: 70),
                title: Text(data[index].jpName, style: TextStyle(fontSize: 25)),
                subtitle: Text(
                  data[index].enName,
                  style: TextStyle(fontSize: 19),
                ),
                trailing: IconButton(
                  splashColor: Colors.redAccent,
                  onPressed: ()  {
                      player.play(AssetSource(data[index].sound));
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
