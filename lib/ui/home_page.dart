import 'package:flutter/material.dart';
import 'package:starter/ui/notification_page.dart';
import 'package:starter/widget/custom_appbar.dart';
import 'package:starter/widget/bottomNav.dart';
import 'package:starter/widget/horizontal1/offer_widget.dart';
import 'package:starter/widget/horizontal1/horizontal_lv.dart';
import 'package:starter/widget/horizontal2/featured_widget.dart';
import 'package:starter/widget/horizontal2/horizontal_lv2.dart';
import 'package:starter/widget/horizontal3/partner_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List<Widget> _chldren = [
    const HomePage(),
    const NotificationPage()
  ];
 
  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        backgroundColor: Colors.white,
        title: 'EVENT ORG',
      ),
      body: SafeArea(
        child: ListView(
          children: [
            const HorizontalLV(),
            const SizedBox(
              height: 12,
            ),
            SizedBox(
              height: 200,
              child: DecoratedBox(
                decoration:
                    BoxDecoration(color: Color.fromRGBO(192, 189, 189, 1)),
                child: Container(
                    padding: EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Featured Promo',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 12),
                        ),
                        HorizontalLV2()
                      ],
                    )),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              padding: EdgeInsets.only(left: 12, top: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'OUR PARTNER',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(12),
              child: Column(
                children: [
                  PartnerWidget(judul: 'PT. CAHAYA PELINDUNG ASIA'),
                  PartnerWidget(judul: 'PT. NIPPON PELINDUNG EROPA'),
                ],
              ))
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

