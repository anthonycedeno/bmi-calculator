import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import './icon_and_text.dart';
import './reusable_card.dart';

const bottomContainerHeight = 80.0;
const bottomContainerColor = Color(0xFFEB1555);
const containerColorInactive = Color(0xFF111328);
const containerColorActive = Color(0xFF1D1E33);

enum Gender {
  male,
  female,
}

class ImputPage extends StatefulWidget {
  @override
  _ImputPageState createState() => _ImputPageState();
}

class _ImputPageState extends State<ImputPage> {
  Color maleContainerColor = containerColorInactive;
  Color femaleContainerColor = containerColorInactive;

  void updateColor(Gender gender) {
    if (gender == Gender.male) {
      if (maleContainerColor == containerColorInactive) {
        maleContainerColor = containerColorActive;
        femaleContainerColor = containerColorInactive;
      } else {
        maleContainerColor = containerColorInactive;
      }
    } else if (gender == Gender.female) {
      if (femaleContainerColor == containerColorInactive) {
        femaleContainerColor = containerColorActive;
        maleContainerColor = containerColorInactive;
      } else {
        femaleContainerColor = containerColorInactive;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          updateColor(Gender.male);
                        });
                      },
                      child: ReusableCard(
                        color: maleContainerColor,
                        cardChild: IconAndText(
                          icon: FontAwesomeIcons.mars,
                          label: 'MALE',
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          updateColor(Gender.female);
                        });
                      },
                      child: ReusableCard(
                        color: femaleContainerColor,
                        cardChild: IconAndText(
                            icon: FontAwesomeIcons.venus, label: 'FEMALE'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                color: containerColorActive,
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      color: containerColorActive,
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      color: containerColorActive,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: bottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomContainerHeight,
            )
          ],
        ));
  }
}
