import 'package:flutter/material.dart';
import 'package:tugas_dicoding/size_config.dart';

import '../components/body.dart';

class splashScreen extends StatelessWidget {
  static String routeName = "/splash";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
     body: Body(),
    );
  }
}
