import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final List<Widget> onBoardingGradients = [
  Positioned(
    top: -200.h,
    right: -200.w,
    child: Container(
      width: 600.w,
      height: 600.h,
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          colors: [
            //      Color(0x66892cdc), // More intense purple
            Color(0x44892cdc),
            Color(0x22892cdc),
            Color(0x00892cdc),
          ],
          //  stops: [0.0, 0.3, 0.6, 1.0],
        ),
      ),
    ),
  ),
  Positioned(
    top: 0,
    right: -100.w,
    child: Container(
      width: 500.w,
      height: 500.h,
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          colors: [
            // Color.fromARGB(135, 141, 71, 206), // Bright purple
            Color(0x55a855f7),
            Color(0x33a855f7),
            Color(0x00a855f7),
          ],
          //  stops: [0.0, 0.4, 0.7, 1.0],
        ),
      ),
    ),
  ),
  Positioned(
    top: 200.h,
    left: -50.w,
    child: Container(
      width: 450.w,
      height: 450.h,
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          colors: [
            //  Color(0x77892cdc),
            Color(0x44892cdc),
            Color(0x22892cdc),
            Color(0x00892cdc),
          ],
          // stops: [0.0, 0.4, 0.7, 1.0],
        ),
      ),
    ),
  ),
  Positioned(
    top: 350.h,
    left: -150.w,
    child: Container(
      width: 400.w,
      height: 400.h,
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          colors: [
            //   Color(0x66662d91),
            Color(0x33662d91),
            Color(0x11662d91),
            Color(0x00662d91),
          ],
          //  stops: [0.0, 0.5, 0.8, 1.0],
        ),
      ),
    ),
  ),
  Positioned(
    top: 180.h,
    left: -50.w,
    child: Container(
      width: 350.w,
      height: 350.h,
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          colors: [
            //  Color(0x44a855f7),
            Color(0x22a855f7),
            Color(0x00a855f7),
          ],
          //  stops: [0.0, 0.6, 1.0],
        ),
      ),
    ),
  ),
];
