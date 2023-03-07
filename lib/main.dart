import 'package:flutter/material.dart';
import 'package:karzinka_full/pages/bottom_page.dart';
import 'package:provider/provider.dart';
import 'package:karzinka_full/pages/texnomart_page.dart';

import 'di.dart';
import 'pages/karzinka_page.dart';

void main()async {
  await setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider(
        create: (context) => HomeProvider(),
        child: const BottomNavigationScreen(),
      ),
      title: 'Flutter Demo',
    );
  }
}


