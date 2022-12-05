import 'package:flutter/material.dart';
import 'ui/my_home_page.dart';
import 'ui/login_page.dart';
import 'ui/register_page.dart';
import 'ui/home_page.dart';
import 'ui/notification_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Starter Template',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "Roboto"
      ),
      // home: const LoginPage(),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/homePage': (context) => const HomePage(),
        '/notificationPage': (context) => const NotificationPage(),
        // '/loginPage': (context) => SecondScreenWithData(),
        // '/returnDataScreen': (context) => const ReturnDataScreen(),
        // '/replacementScreen': (context) => const ReplacementScreen(),
        // '/anotherScreen': (context) => const AnotherScreen(),
      },
    );
  }
}
