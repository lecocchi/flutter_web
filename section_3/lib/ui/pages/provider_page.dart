import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/counter_provider.dart';
import '../shared/custom_app_menu.dart';
import '../shared/custom_text_button.dart';

class ProviderPage extends StatelessWidget {
  const ProviderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider(
        create: (context) => CounterProvider(),
        child: const _ProviderPageBody(),
      ),
    );
  }
}

class _ProviderPageBody extends StatelessWidget {
  const _ProviderPageBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CounterProvider counterProvider =
        Provider.of<CounterProvider>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CustomAppMenu(),
        const Spacer(),
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
        const Spacer(),
      ],
    );
  }
}
