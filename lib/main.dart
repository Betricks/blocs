import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

import 'counter_bloc_bloc.dart';

void main() {
  runApp(MyHomePage());
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(),
      child: MaterialApp(
        home: Scaffold(
            body: BlocBuilder<CounterBloc, int>(builder: (context, state) {
          return SafeArea(
            child: Container(
              child: Column(
                children: [
                  Text('You have pushed the button this many times'),
                  Center(
                    child: Text(state.toString()),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          BlocProvider.of<CounterBloc>(context)
                              .add(incremetEvent());
                        },
                        icon: Icon(Icons.add),
                      ),
                      IconButton(
                        onPressed: () {
                          BlocProvider.of<CounterBloc>(context)
                              .add(decremetEvent());
                        },
                        icon: Icon(Icons.remove),
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        })),
      ),
    );
  }
}
