import 'package:flutter/material.dart';
import 'package:hotel_application/examples/cubit/counter_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class blocProvider extends StatelessWidget {
  const blocProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(home: Scaffold(body: HomePage())),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // final counterValue = context.watch<CounterCubit>().state.value;
    // BlocListener is a widget which takes a BlocWidgetListener and an optional Bloc and
    // is a generic way of listening to states in the widget tree.
    // Whenever the bloc's state changes the listener will be called with the new state.
    // BlocListener will automatically cancel the subscription when the widget is disposed.
    // BlocListener is useful when you want to execute some code in response to a state change
    // e.g. navigating to the next screen when a form is submitted.
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: BlocConsumer<CounterCubit, CubitState>(
            listener: (context, state) {
              SnackBar snackBar;
              if (state.hasIncremented! == 0) {
                snackBar = const SnackBar(
                  content: Text("Value incremented"),
                  duration: Duration(seconds: 1),
                  showCloseIcon: true,
                  backgroundColor: Colors.green,
                );
              } else if (state.hasIncremented! == 1) {
                snackBar = const SnackBar(
                  content: Text("Value decremented"),
                  duration: Duration(seconds: 1),
                  showCloseIcon: true,
                  backgroundColor: Colors.redAccent,
                );
              } else {
                debugPrint(
                  "reset---------------------------------------------------",
                );
                snackBar = const SnackBar(
                  content: Text(
                    "Value reset",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                  duration: Duration(seconds: 1),
                  closeIconColor: Colors.black,
                  showCloseIcon: true,
                  backgroundColor: Colors.yellow,
                );
              }
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            bloc: BlocProvider.of<CounterCubit>(
              context,
            ), // Why this line:it is used to access the cubit instance
            builder: (context, state) {
              return Text(
                'The Value is ${state.value}',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              );
            },
          ),
        ),
        SizedBox(height: 25),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            FloatingActionButton(
              onPressed:
                  () =>
                      BlocProvider.of<CounterCubit>(context).incrementCounter(),
              child: Icon(Icons.add, size: 25),
            ),
            const SizedBox(width: 35),
            FloatingActionButton(
              onPressed:
                  () =>
                      BlocProvider.of<CounterCubit>(context).decrementCounter(),
              child: Icon(Icons.remove),
            ),
            SizedBox(width: 20),
            FloatingActionButton(
              onPressed:
                  () => BlocProvider.of<CounterCubit>(context).resetCounter(),
              child: Icon(Icons.restart_alt),
            ),
          ],
        ),
      ],
    );
  }
}
