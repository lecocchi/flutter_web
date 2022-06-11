import 'package:flutter/material.dart';

import '../shared/custom_app_menu.dart';
import '../shared/custom_text_button.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CustomAppMenu(),
          const Spacer(),
          const Text('Contador Stateful'),
          FittedBox(
            fit: BoxFit.contain,
            child: Text(
              'Counter: $_counter',
              style: const TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextButton(
                  onPressed: () {
                    setState(() {
                      _counter++;
                    });
                  },
                  text: 'Incrementar'),
              CustomTextButton(
                  onPressed: () {
                    setState(() {
                      _counter--;
                    });
                  },
                  text: 'Decrementar'),
            ],
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
