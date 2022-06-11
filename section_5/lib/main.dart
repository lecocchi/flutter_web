import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:section_5/config/fluro/fluro_config.dart';
import 'package:section_5/providers/page_provider.dart';

void main() {
  setUpFluro();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => PageProvider()),
      ],
      child: MaterialApp(
        title: 'Material App',
        debugShowCheckedModeBanner: false,
        initialRoute: '/about',
        onGenerateRoute: router.generator,
      ),
    );
  }
}
