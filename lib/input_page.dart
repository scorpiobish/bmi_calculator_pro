import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

var blackColor = const Color(0xffD1E33);
var bottomContainerWidth = double.maxFinite;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: ReusableCard(
                  colour: blackColor,
                  cardChild: const Column(
                    children: [
                      Icon(
                        FontAwesomeIcons.mars,
                        size: 80, color: Colors.purple,
                      ),
                      Text(
                        'MALE',
                      )
                    ],
                  ),
                )),
                Expanded(
                    child: ReusableCard(
                  colour: blackColor,
                )),
              ],
            ),
          ),
          Expanded(
              child: ReusableCard(
            colour: blackColor,
          )),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: ReusableCard(
                  colour: blackColor,
                )),
                // ignore: prefer_const_constructors
                Expanded(
                    child: ReusableCard(
                  colour: blackColor,
                )),
              ],
            ),
          ),
          Container(
            color: Color(0xffEB1555),
            width: bottomContainerWidth,
            height: 80,
            margin: EdgeInsets.only(top: 10),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.colour, this.cardChild});
  final Color colour;
  final Widget? cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: colour,
      ),
      margin: const EdgeInsets.all(15),
    );
  }
}
