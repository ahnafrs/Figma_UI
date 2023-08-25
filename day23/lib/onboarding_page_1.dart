import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBoardingPage1 extends StatelessWidget {
  const OnBoardingPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: Transform.rotate(
              angle: pi / 5,
              child: Container(
                height: 395,
                width: 480,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(40)),
              ),
            ),
            top: -100,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Update Progress Your Work for The Team',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 30,
                ),
                SvgPicture.asset('images/slider1.svg'),
                SizedBox(
                  height: 32,
                ),
                CustomButton(
                  title: "Sign Up",
                  onTap: () {},
                  isBlue: true,
                ),
                SizedBox(
                  height: 16,
                ),
                CustomButton(
                  title: "Log In",
                  onTap: () {},
                  isBlue: false,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  CustomButton({super.key, this.title, this.onTap, this.isBlue});
  String? title;
  VoidCallback? onTap;
  bool? isBlue;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: double.infinity,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: isBlue == true ? Colors.transparent : Colors.white,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.symmetric(vertical: 16),
      onPressed: onTap,
      child: Text(
        "$title",
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
      color: isBlue == true ? Colors.blueAccent : Colors.transparent,
    );
  }
}
