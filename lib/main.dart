import 'package:educational_app/Screen/Home/Provider/HomeProvider.dart';
import 'package:educational_app/Screen/Home/View/HomeLinkScreen.dart';
import 'package:educational_app/Screen/Home/View/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomeProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => HomeScreen(),
          'home': (context) => HomeLinkScreen(),
        },
      ),
    ),
  );
}
