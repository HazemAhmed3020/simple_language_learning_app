import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../component/phrases_datamodel.dart';


class PhrasesScreen extends StatefulWidget {
  const PhrasesScreen({super.key});
  static const route = '/PhrasesScreen';
  @override
  State<PhrasesScreen> createState() => _PhrasesScreenState();
}

class _PhrasesScreenState extends State<PhrasesScreen> {
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
        backgroundColor: Colors.blue.shade300,
      ),
      body: Container(
        color: Colors.blue.shade50,
        child: ListView.builder(
          itemCount: phraseData.length,
          itemBuilder: (context, index) {
            return SizedBox(
              height: 100,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                elevation: 8,
                margin: EdgeInsets.all(6),
                color: Colors.blue,
                child: ListTile(
                  contentPadding: EdgeInsets.all(5),
                  title: Text(phraseData[index].jphrase, style: TextStyle(fontSize: 20,color: Colors.white)),
                  subtitle: Text(
                    phraseData[index].eNphrase,
                    style: TextStyle(fontSize: 17 ,color: Colors.white54 , fontWeight: FontWeight.w500),
                  ),
                  trailing: IconButton(
                    splashColor: Colors.redAccent,
                    onPressed: ()  {
                      player.play(AssetSource(phraseData[index].sound));
                    },
                    icon: Icon(Icons.play_arrow, color: Colors.white, size: 30),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
