import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:toku/models/models.dart';

// that is the Category code in the home_page
//****************************************************************************************************
class Category extends StatelessWidget {
  const Category({Key? key, this.text, this.color, this.onTap})
      : super(key: key);

  final String? text;
  final Color? color;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 8,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
            borderRadius: BorderRadius.circular(20),
            color: color,
          ),
          padding: const EdgeInsets.only(left: 25),
          alignment: Alignment.centerLeft,
          height: 70,
          width: double.infinity,
          child: Text(
            text!,
            style: GoogleFonts.titanOne(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
        ),
      ),
    );
  }
}

//**************************************************************************************** */

// items ////

class Item extends StatelessWidget {
  const Item({
    Key? key,
    required this.model,
    required this.itemType,
  }) : super(key: key);

  final ItemModel model;
  final String itemType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 8,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.circular(20),
          color: HexColor('2D4263'),
        ),
        height: 100,
        child: Row(
          children: [
            Image.asset(model.image!),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    model.jpName,
                    style: GoogleFonts.fredokaOne(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    model.enName,
                    style: GoogleFonts.fredokaOne(
                      color: HexColor('ECB365'),
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: IconButton(
                onPressed: () {
                  //حطيت الكود بتاعي في التراي و الكاتش عشان ميقفش التطبيق كلة
                  //لكن ممكن الصوت ميشتغلش عادي
                  ///////////////////////////////////////////////////////////////////
                  try {
                    AudioCache player =
                        AudioCache(prefix: 'assets/sounds/$itemType/');
                    player.play(model.sound);
                  } catch (e) {
                    debugPrint(e.toString());
                  }
                },
                icon: const Icon(
                  Icons.play_arrow_rounded,
                  size: 40,
                ),
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
//**************************************************************************** */
//PhraseItem
////////////////////////////////////////////////////////////////////////////////

class PhraseItem extends StatelessWidget {
  const PhraseItem({
    Key? key,
    required this.model,
    required this.itemType,
  }) : super(key: key);

  final ItemModel model;
  final String itemType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 8,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.circular(20),
          color: HexColor('2D4263'),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      model.jpName,
                      style: GoogleFonts.fredokaOne(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      model.enName,
                      style: GoogleFonts.fredokaOne(
                        color: HexColor('ECB365'),
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              IconButton(
                onPressed: () {
                  //حطيت الكود بتاعي في التراي و الكاتش عشان ميقفش التطبيق كلة
                  //لكن ممكن الصوت ميشتغلش عادي
                  ///////////////////////////////////////////////////////////////////
                  try {
                    AudioCache player =
                        AudioCache(prefix: 'assets/sounds/$itemType/');
                    player.play(model.sound);
                  } catch (e) {
                    debugPrint(e.toString());
                  }
                },
                icon: const Icon(
                  Icons.play_arrow_rounded,
                  size: 40,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
