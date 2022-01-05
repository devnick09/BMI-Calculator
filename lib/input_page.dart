import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'card_content.dart';
import 'constants.dart';

enum Gender{
  male,
  female
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0A0E21),
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Row(
            children: [
              Expanded(child: Reusable_Card(
                  onPress: (){
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  colour: selectedGender == Gender.male ? ActiveCardColor : inactiveCardColor,
                  cardChild: CardContent(FontAwesomeIcons.mars, "MALE"),
              ),
              ),
              Expanded(child: Reusable_Card(
                onPress: (){
                  setState(() {
                    selectedGender = Gender.female;
                  });
                },
                  colour: selectedGender == Gender.female ? ActiveCardColor : inactiveCardColor,
                  cardChild: CardContent(FontAwesomeIcons.venus, "FEMALE"),
              )
              ),
            ],
          )),
          Expanded(child: Reusable_Card(
            colour: inactiveCardColor,
            cardChild: Column(
              children: [
                Text('Hello', style: textStyle,)
              ],
            ),
            ),
          ),
          Expanded(child: Row(
            children: [
              Expanded(child: Reusable_Card(colour: inactiveCardColor)
              ),
              Expanded(child: Reusable_Card(colour: inactiveCardColor)
              ),
            ],
          ),
          ),
          Container(
            color: Color(0xFFEB1555),
            height: 70.0,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
          ),
        ],
      )
    );
  }
}



