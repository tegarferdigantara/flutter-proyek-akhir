import 'package:flutter/material.dart';

class OfferWidget extends StatelessWidget {
  const OfferWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
              child: Image.asset('assets/img/offer1/offer1.jpg'),
              ),
              const SizedBox(
                height: 4,
              ),
              Text('SEMINAR NASIONAL INDUSTRI 4.0',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
              Text(
                'Kehadiran teknologi telekomunikasi 5G dan...',
                style: TextStyle(
                  fontSize: 15,
                ),
              )
        ],
      ),
    );
  }
}