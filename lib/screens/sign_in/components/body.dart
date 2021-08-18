import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tugas_dicoding/components/default_button.dart';
import 'package:tugas_dicoding/constants.dart';
import 'package:tugas_dicoding/size_config.dart';

import 'Custom_surfflix.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              Text(
                'Welcome Back',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: getProportionateScreenWidth(28),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'masuk dengan emaul dan password atau social media lainnya',
                textAlign: TextAlign.center,
              ),
              _signForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class _signForm extends StatefulWidget {
  @override
  __signFormState createState() => __signFormState();
}

class __signFormState extends State<_signForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
      children: [
        buildEmailtFormField(),
        SizedBox(
          height: getProportionateScreenHeight(20),
        ),
      buildPasswordFormField(),
        SizedBox(
          height: getProportionateScreenHeight(20),
        ),
        Row(
          children: [
            SvgPicture.asset("assets/icons/error.svg",
            height: getProportionateScreenWidth(14),
              width: getProportionateScreenWidth(14),
            ),
            SizedBox(
              width: getProportionateScreenWidth(10),
            ),
            Text(errors[0]),
          ],
        ),
        DefaultButton(text: "Login",press: (){},)
      ],
    ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "masukan password",
        suffixIcon:CustomeSurfflixIcon(svgIcon: 'assets/icons/lock.svg',),
      ),
    );
  }

  TextFormField buildEmailtFormField() {
    return TextFormField(
        keyboardType: TextInputType.emailAddress,
        validator: (value){
          if(value!.isEmpty){
            setState(() {
              errors.add("email tidak boleh kosong");
            });
          }

          return null;
        },
        decoration: InputDecoration(
          labelText: "Email",
          hintText: "masukan email",
          suffixIcon:CustomeSurfflixIcon(svgIcon: 'assets/icons/Mail.svg',),
        ),
      );
  }
}
