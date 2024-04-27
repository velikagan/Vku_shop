import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vku_shopping/models/cart.dart';

import 'pages/welcomepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider (create: (context) => Cart(),
    builder: (context, child) => const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomePage(),
    ),
    );
      
  }
}
