import 'package:couter_app_setstate/controller/provider/couterProvider.dart';
import 'package:couter_app_setstate/view/couterScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const CounterApp());
}

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, _, __) {
      return MultiProvider(
        providers: [
          ChangeNotifierProvider<CounterProvider>(
              create: (context) => CounterProvider()),
        ],
        child: MaterialApp(
          theme: ThemeData(primarySwatch: Colors.teal),
          debugShowCheckedModeBanner: false,
          home: const CouterScreen(),
        ),
      );
    });
  }
}
