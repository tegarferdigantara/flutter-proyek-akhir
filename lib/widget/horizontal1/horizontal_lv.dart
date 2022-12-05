import 'package:flutter/material.dart';
import 'package:starter/widget/horizontal1/offer_widget.dart';

class HorizontalLV extends StatelessWidget {
  const HorizontalLV({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 266,
      child: ListView.separated(
        padding: EdgeInsets.all(16),
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        separatorBuilder: ((context, _) => SizedBox(
              width: 12,
            )),
        itemBuilder: (context, index) => OfferWidget(),
      ),
    );
  }
}