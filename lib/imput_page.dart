import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import './icon_and_text.dart';
import './reusable_card.dart';

const bottomContainerHeight = 80.0;
const bottomContainerColor = Color(0xFFEB1555);
const containerColor = Color(0xFF1D1E33);

class ImputPage extends StatefulWidget {
  @override
  _ImputPageState createState() => _ImputPageState();
}

class _ImputPageState extends State<ImputPage> {
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
                    child: ReusableCard(
                      color: containerColor,
                      cardChild: IconAndText(icon: FontAwesomeIcons.mars, label: 'MALE',),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      color: containerColor,
                      cardChild: IconAndText(icon: FontAwesomeIcons.venus, label: 'FEMALE' ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                color: containerColor,
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      color: containerColor,
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      color: containerColor,
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
