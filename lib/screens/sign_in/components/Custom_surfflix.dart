import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../size_config.dart';


class CustomeSurfflixIcon extends StatelessWidget {
  const CustomeSurfflixIcon({
    Key? key, required this.svgIcon,
  }) : super(key: key);

  final String svgIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: SvgPicture.asset(svgIcon,
        height: getProportionateScreenWidth(18),
      ),
    );
  }
}
