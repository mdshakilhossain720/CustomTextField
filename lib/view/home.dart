import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType? keyboardinputype;
  final bool? isobchater;
  final String?obscuricharter;
  final String hinttext;
  final Widget?  prefixIcon;
  final Widget? suffixIcon;
  const HomePage({super.key, required this.controller,
    this.keyboardinputype,
    this.isobchater=false,
    this.obscuricharter='*',
    required this.hinttext,
    this.prefixIcon,
    this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return TextFormField(
      controller: controller,
      keyboardType: keyboardinputype,
      obscureText:isobchater!,
      obscuringCharacter:obscuricharter! ,

      decoration: InputDecoration(

        contentPadding: EdgeInsets.only(top: 10),
        constraints: BoxConstraints(

          maxHeight:height*0.065,
        ),
        filled: true,
        fillColor: Colors.white,
        hintText: hinttext,
        prefixIcon:prefixIcon ,
        suffixIcon:suffixIcon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: Colors.green,width: 2,
          ),

        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.greenAccent,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.greenAccent,
          ),
          borderRadius: BorderRadius.circular(15),
        ),


      ),
    );
  }
}
