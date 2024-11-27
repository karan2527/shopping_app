import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/Home_Page.dart';
import 'package:shopping_app/cart_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=> CartProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Shopping App',
        theme: ThemeData(
            fontFamily: 'Lato',
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.amber,
              primary: const Color.fromRGBO(254, 206, 1, 1),
            ),
            appBarTheme: const AppBarTheme(
                titleTextStyle: TextStyle(
              fontSize: 20,
              color: Colors.black,
            )),
            inputDecorationTheme: const InputDecorationTheme(
              hintStyle: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
              prefixIconColor: Colors.grey,
            ),
            textTheme: const TextTheme(
                titleLarge: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                ),
                titleMedium: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                ),
                bodySmall: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                )),
            useMaterial3: true),
        home: const HomePage(),
      ),
    );
  }
}
