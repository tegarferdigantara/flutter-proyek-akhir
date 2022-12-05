import 'package:flutter/material.dart';
import 'package:starter/widget/bottomNav.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Notifications',
          style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: size.height,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              top: 0,
              child: Image.asset(
                "assets/img/notif.png",
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Color.fromARGB(255, 0, 198, 208),
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(Icons.notifications), label: 'Notification'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil')
      ],
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
    ),
    );
  }
}
