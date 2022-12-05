import 'package:flutter/material.dart';

class PartnerWidget extends StatelessWidget {
  final String judul;
  const PartnerWidget({
    Key? key,
    required this.judul
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      height: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
              child: Image.asset('assets/img/team/team.jpg'),
              ),
              const SizedBox(
                height: 4,
              ),
              Center(
                child: Text(judul,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.blue)),
              ),
             
        ],
      ),
    );
  }
}