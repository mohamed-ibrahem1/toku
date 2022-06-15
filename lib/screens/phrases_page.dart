import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:toku/components/components.dart';
import 'package:toku/models/models.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({Key? key}) : super(key: key);

  final List<ItemModel> phrases = const [
    ItemModel(
      jpName: 'watashi wa purogramingu daisukidesu',
      enName: 'i love programming',
      sound: 'i_love_programming.wav',
    ),
    ItemModel(
      jpName: 'Doko ni iku no',
      enName: 'where are you going ?',
      sound: 'where_are_you_going.wav',
    ),
    ItemModel(
      jpName: 'namae wa nandesu ka',
      enName: 'what is your name ?',
      sound: 'what_is_your_name.wav',
    ),
    ItemModel(
      jpName: 'go kibun wa ikagadesu ka',
      enName: 'how are you feeling ?',
      sound: 'how_are_you_feeling.wav',
    ),
    ItemModel(
      jpName: 'hai watashi wa kite imasu',
      enName: 'yes i am coming',
      sound: 'yes_im_coming.wav',
    ),
    ItemModel(
      jpName: 'watashi wa anime ga daisukidesu',
      enName: 'i love anime',
      sound: 'i_love_anime.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('191919'),
      appBar: AppBar(
        backgroundColor: HexColor('191919'),
        elevation: 0.0,
        title: Text(
          'Phrases',
          style: GoogleFonts.titanOne(
            color: Colors.white,
            fontSize: 35,
          ),
        ),
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: phrases.length,
        itemBuilder: (context, index) {
          return PhraseItem(
            model: phrases[index],
            itemType: 'phrases',
          );
        },
      ),
    );
  }
}
