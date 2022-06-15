import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:toku/components/components.dart';
import 'package:toku/models/models.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({Key? key}) : super(key: key);

  final List<ItemModel> colors = const [
    ItemModel(
      image: 'assets/images/colors/color_black.png',
      jpName: 'burakku',
      enName: 'black',
      sound: 'black.wav',
    ),
    ItemModel(
      image: 'assets/images/colors/color_brown.png',
      jpName: 'chairo',
      enName: 'brown',
      sound: 'brown.wav',
    ),
    ItemModel(
      image: 'assets/images/colors/color_dusty_yellow.png',
      jpName: 'hokori ppoi kiiro',
      enName: 'dusty yellow',
      sound: 'dusty yellow.wav',
    ),
    ItemModel(
      image: 'assets/images/colors/color_gray.png',
      jpName: 'gure',
      enName: 'gray',
      sound: 'gray.wav',
    ),
    ItemModel(
      image: 'assets/images/colors/color_green.png',
      jpName: 'midori',
      enName: 'green',
      sound: 'green.wav',
    ),
    ItemModel(
      image: 'assets/images/colors/color_red.png',
      jpName: 'aka',
      enName: 'red',
      sound: 'red.wav',
    ),
    ItemModel(
      image: 'assets/images/colors/color_white.png',
      jpName: 'shiroi',
      enName: 'white',
      sound: 'white.wav',
    ),
    ItemModel(
      image: 'assets/images/colors/yellow.png',
      jpName: 'kiiro',
      enName: 'yellow',
      sound: 'yellow.wav',
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
          'Colors',
          style: GoogleFonts.titanOne(
            color: Colors.white,
            fontSize: 35,
          ),
        ),
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return Item(
            model: colors[index],
            itemType: 'colors',
          );
        },
      ),
    );
  }
}
