import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../size_config.dart';

class splachContent extends StatelessWidget {
  const splachContent({
    Key? key, required this.text, required this.image,
  }) : super(key: key);

  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Text("TOKOKU",style: TextStyle(fontSize: getProportionateScreenWidth(36),
            color: kPrimaryColor,
            fontWeight: FontWeight.bold),
        ),
        Text(
          text,
          textAlign: TextAlign.center,
        ),
        Spacer(flex: 2,),
        Image.asset(image,
          height: getProportionateScreenHeight(265),
          width: getProportionateScreenWidth(235),)
      ],
    );
  }
}
