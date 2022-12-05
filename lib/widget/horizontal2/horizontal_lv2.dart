import 'package:flutter/material.dart';
import 'package:starter/widget/horizontal2/featured_widget.dart';

class HorizontalLV2 extends StatelessWidget {
  const HorizontalLV2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 162,
      child: ListView.separated(
        padding: EdgeInsets.all(16),
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        separatorBuilder: ((context, _) => SizedBox(
              width: 12,
            )),
        itemBuilder: (context, index) => FeaturedWidget(),
      ),
    );
  }
}