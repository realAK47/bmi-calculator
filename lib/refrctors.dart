import 'package:flutter/material.dart';
import 'constants.dart';

class BackBoxes extends StatelessWidget {
  BackBoxes({@required this.colour, this.childBox, this.onPress});
  final Color colour;
  final Widget childBox;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: childBox,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(10.0),
          color: colour,
        ),
      ),
    );
  }
}

class inBox extends StatelessWidget {
  inBox({@required this.ico, @required this.str});
  final IconData ico;
  final String str;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          ico,
          size: 80,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(str, style: kTxtstyle)
      ],
    );
  }
}

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon, @required this.onpress});
  final IconData icon;
  final Function onpress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onpress,
      child: Icon(icon),
      elevation: 0,
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      constraints: BoxConstraints.tightFor(
        width: 50,
        height: 50,
      ),
    );
  }
}

class BottomButton extends StatelessWidget {
  BottomButton({@required this.onTap, @required this.str});
  final Function onTap;
  final String str;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(bottom: 20),
        child: Center(
          child: Text(
            str,
            style: kLargeButtonStyle,
          ),
        ),
        color: Color(0xFFEB1555),
        height: kBottomcontainerheight,
        width: double.infinity,
        margin: EdgeInsets.only(top: 10.0),
      ),
    );
  }
}
