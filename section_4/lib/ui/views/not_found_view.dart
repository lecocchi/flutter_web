import 'package:flutter/material.dart';

import '../../config/get_it_config.dart';
import '../../services/navigation_service.dart';
import '../shared/custom_text_button.dart';

class NotFoundView extends StatelessWidget {
  const NotFoundView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
              // Navigator.pushNamed(context, '/stateful');
              getIt.get<NavigationService>().goBack();
            },
            text: 'Regresar'),
      ],
    );
  }
}
