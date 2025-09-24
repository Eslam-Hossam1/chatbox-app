import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SliverStickyFooter extends StatelessWidget {
  const SliverStickyFooter({
    super.key,
    this.bottomPadding,
    required this.children,
  });
  final double? bottomPadding;
  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      hasScrollBody: false,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: EdgeInsets.only(bottom: bottomPadding?.h ?? 30.h),
          child: Column(
            children: children,
          ),
        ),
      ),
    );
  }
}
