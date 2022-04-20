import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IndicatorWidget extends StatelessWidget {
  const IndicatorWidget({Key? key, required this.selected}) : super(key: key);
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return _indicator(selected);
  }
}

Widget _indicator(bool selected) {
  return Padding(
    padding: EdgeInsets.symmetric(
      horizontal: 3.w,
    ),
    child: AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      height: 5.h,
      width: 50.w,
      decoration: BoxDecoration(
        color: selected
            ? const Color(0xff59D6D6)
            : const Color.fromARGB(255, 148, 146, 148),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
    ),
  );
}
