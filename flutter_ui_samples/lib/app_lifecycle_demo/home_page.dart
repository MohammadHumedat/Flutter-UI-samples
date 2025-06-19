import 'package:flutter/material.dart';

class AppLifecycleDemo extends StatelessWidget {
  const AppLifecycleDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Lifecycle Demo',
      home: Scaffold(appBar: AppBar(), body: AppLifecycleDisplay()),
    );
  }
}

class AppLifecycleDisplay extends StatefulWidget {
  const AppLifecycleDisplay({super.key});

  @override
  State<AppLifecycleDisplay> createState() => _AppLifecycleDisplayState();
}

class _AppLifecycleDisplayState extends State<AppLifecycleDisplay>
    with WidgetsBindingObserver {
  // using Mixin to add a new feature or behavioral

  @override
  void initState() {
    // To Add listener or observer
    super.initState(); // alawys should be at first because this is the parent.
    WidgetsBinding.instance.addObserver(
      this,
    ); // "this" its refer to this class.
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    debugPrint(state.toString());
  }

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance.removeObserver(
      this,
    ); // After completing it, remove the observer to avoid memory overhead.
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.amber,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            FilterChip(label: Text('Chip1'), onSelected: (value) => false),
            Spacer(),
            FilterChip(label: Text('Chip2'), onSelected: (value) => false),
            Spacer(),
            FilterChip(label: Text('Chip3'), onSelected: (value) => false),
          ],
        ),
      ),
    );
  }
}
