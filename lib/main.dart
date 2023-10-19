import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './screens/main_screen.dart';
import './providers/text_entry_provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => TextEntryProvider(),
      child: MaterialApp(
        title: 'Provider Text Collector',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: MainScreen(),
      ),
    );
  }
}
