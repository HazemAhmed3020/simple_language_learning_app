import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import '../component/colors_datamodel.dart';



class ColorsScreen extends StatefulWidget {
  const ColorsScreen({super.key});
  static const route = '/ColorsScreen';
  @override
  State<ColorsScreen> createState() => _ColorsScreenState();
}

class _ColorsScreenState extends State<ColorsScreen> {
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
        backgroundColor: Colors.indigo.shade300,
      ),
      body: Container(

        color: Colors.blue.shade100,
        child: ListView.builder(
          itemCount: dataColors.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 8,
              margin: EdgeInsets.all(5),
              color: Colors.indigo,
              child: ListTile(
                leading: Image.asset(dataColors[index].image, width: 70, height: 70),
                title: Text(dataColors[index].jpName, style: TextStyle(fontSize: 25,color: Colors.white)),
                subtitle: Text(
                  dataColors[index].enName,
                  style: TextStyle(fontSize: 19 ,color: Colors.white30),
                ),
                trailing: IconButton(
                  splashColor: Colors.redAccent,
                  onPressed: ()  {
                    player.play(AssetSource(dataColors[index].sound));
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

