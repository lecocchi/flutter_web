
import 'package:flutter/material.dart';

import '../shared/custom_text_button.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '404',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text(
              'Página no encontrada',
              style: TextStyle(fontSize: 20),
            ),
            CustomTextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/stateful');
                },
                text: 'Regresar'),
          ],
        ),
      ),
    );
  }
}
