
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/counter_provider.dart';
import '../shared/custom_text_button.dart';

class ProviderView extends StatelessWidget {
  const ProviderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CounterProvider(),
      child: const _ProviderViewBody(),
    );
  }
}

class _ProviderViewBody extends StatelessWidget {
  const _ProviderViewBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CounterProvider counterProvider =
        Provider.of<CounterProvider>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Contador Provider'),
        FittedBox(
          fit: BoxFit.contain,
          child: Text(
            'Counter: ${counterProvider.counter}',
            style: const TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextButton(
                onPressed: () {
                  counterProvider.increment();
                },
                text: 'Incrementar'),
            CustomTextButton(
                onPressed: () {
                  counterProvider.decrement();
                },
                text: 'Decrementar'),
          ],
        ),
      ],
    );
  }
}
