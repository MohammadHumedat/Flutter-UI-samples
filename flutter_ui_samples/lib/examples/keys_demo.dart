import 'package:flutter/material.dart';

/// Demonstrates the concept of keys in Flutter widgets.
///
/// Keys are used to preserve the state of widgets when they move within the widget tree.
/// This example helps readers understand how keys can affect widget identity and state management.
///
/// Useful for:
/// - Understanding the difference between ValueKey, ObjectKey, and GlobalKey.
/// - Learning how to maintain widget state during reordering or rebuilding.
/// - Debugging widget state issues related to widget identity.
///
/// See also:
/// - [Flutter documentation on keys](https://docs.flutter.dev/development/ui/widgets-intro#using-keys)
/// - [Widget keys and state](https://api.flutter.dev/flutter/widgets/Key-class.html)
///
class ColorContainer extends StatefulWidget {
  // A simple container widget that displays a color.
  final Color color;
  const ColorContainer({super.key, required this.color});

  @override
  State<ColorContainer> createState() => _ColorContainerState();
}

class _ColorContainerState extends State<ColorContainer> {
  late Color color;
  @override
  void initState() {
    // Initializes the state of the ColorContainer widget.
    // Assigns the color from the widget to the state variable.
    // This is important for maintaining the color when the widget is rebuilt.
    // This ensures that the color is preserved even if the widget is moved or reordered.
    color = widget.color;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(height: 85, width: 85, color: color);
  }
}

class KeysDemo extends StatefulWidget {
  const KeysDemo({super.key});

  @override
  State<KeysDemo> createState() => _KeysDemoState();
}

class _KeysDemoState extends State<KeysDemo> {
  List<ColorContainer> myContainer = [
    // A list of ColorContainer widgets with different colors.
    ColorContainer(
      key: ValueKey('red'),
      color: Colors.redAccent,
    ), // Each ColorContainer is assigned a ValueKey based on its color.
    ColorContainer(key: ValueKey('green'), color: Colors.lightGreen),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Keys demo'),
          elevation: 1,
          backgroundColor: Colors.greenAccent,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [myContainer[0], myContainer[1]],
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    // Swaps the positions of the ColorContainer widgets in the list.
                    // This demonstrates how keys help maintain the state of the widgets
                    // even when their positions change in the widget tree.
                    final removecon = myContainer.removeAt(0);
                    myContainer.insert(1, removecon);
                  });
                },
                child: Text('Swapp'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
