
import 'package:flutter/material.dart';

import '../shared/custom_text_button.dart';

class CounterView extends StatefulWidget {
  const CounterView({Key? key}) : super(key: key);

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
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
      ],
    );
  }
}
