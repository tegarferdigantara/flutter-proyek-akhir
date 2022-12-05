import 'package:flutter/material.dart';

class FeaturedWidget extends StatelessWidget {
  const FeaturedWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 300,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
              child: Image.asset('assets/img/offer2/offer1.png'),
              ),
              const SizedBox(
                height: 4,
              ),
              Text('Graduation Party',
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.w700)),
              Text(
                '\$1000',
                style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.w700, color: Colors.blue
                ),
              )
        ],
      ),
    );
  }
}