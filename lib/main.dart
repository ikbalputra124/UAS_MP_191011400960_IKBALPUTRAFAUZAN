import 'package:flutter/material.dart';
import 'package:artikel_apps/providers/artikel_provider.dart';
import 'package:artikel_apps/screens/artikel_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ArtikelProvider>(
          create: (context) => ArtikelProvider(),
        ),
        ChangeNotifierProvider<ArtikelDetailProvider>(
          create: (context) => ArtikelDetailProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Aplikasi Artikel',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const ArtikelScreen(),
      ),
    );
  }
}
