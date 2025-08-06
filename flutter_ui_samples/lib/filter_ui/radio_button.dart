import 'package:flutter/material.dart';

enum Choices { choice1, choice2, choice3 }

class RadioButton extends StatefulWidget {
  const RadioButton({super.key});

  @override
  State<RadioButton> createState() => _RadioExampleState();
}

class _RadioExampleState extends State<RadioButton> {
  Choices? _choice ;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: [
            Radio<Choices>(
              value: Choices.choice1,
              activeColor: Color(0xFFbab8d0),
              groupValue: _choice,
              onChanged: (Choices? value) {
                setState(() {
                  _choice = value;
                });
              },
            ),
            SizedBox(width: 15),
            Text('All Jobs Posts ', style: TextStyle(color: Color(0xFFbab9ce))),
          ],
        ),
        Row(
          children: [
            Radio<Choices>(
              value: Choices.choice2,
              groupValue: _choice,
              activeColor: Color(0xFFbab8d0),

              onChanged: (Choices? value) {
                setState(() {
                  _choice = value;
                });
              },
            ),
            SizedBox(width: 15),
            Text(
              'Active jobs posts',
              style: TextStyle(color: Color(0xFFbab9ce)),
            ),
          ],
        ),
        Row(
          children: [
            Radio<Choices>(
              value: Choices.choice3,
              groupValue: _choice,
              activeColor: Color(0xFFbab8d0),
              onChanged: (Choices? value) {
                setState(() {
                  _choice = value;
                });
              },
            ),
            SizedBox(width: 15),
            Text(
              'Archive jobs posts',
              style: TextStyle(color: Color(0xFFbab9ce)),
            ),
          ],
        ),
      ],
    );
  }
}
