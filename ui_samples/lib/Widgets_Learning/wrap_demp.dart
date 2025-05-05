import 'package:flutter/material.dart';

class WrapDemo extends StatelessWidget {
  const WrapDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        Chip(
          label: Text('Chip 1'),
          avatar: CircleAvatar(backgroundColor: Colors.amber),
        ),
        Chip(
          label: Text('Chip 2'),
          avatar: CircleAvatar(backgroundColor: Colors.green),
        ),
        Chip(
          label: Text('Chip 3'),
          avatar: CircleAvatar(backgroundColor: Colors.redAccent),
        ),
        Chip(
          label: Text('Chip 4'),
          avatar: CircleAvatar(backgroundColor: Colors.yellow),
        ),
        Chip(
          label: Text('Chip 5'),
          avatar: CircleAvatar(backgroundColor: Colors.amber),
        ),
        Chip(
          label: Text('Chip 6'),
          avatar: CircleAvatar(backgroundColor: Colors.green),
        ),
        Chip(
          label: Text('Chip 7'),
          avatar: CircleAvatar(backgroundColor: Colors.redAccent),
        ),
        Chip(
          label: Text('Chip 8'),
          avatar: CircleAvatar(backgroundColor: Colors.yellow),
        ),
      ],
    );
  }
}
