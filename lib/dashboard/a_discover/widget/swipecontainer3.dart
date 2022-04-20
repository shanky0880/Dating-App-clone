import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SwipeContainer3 extends StatelessWidget {
  const SwipeContainer3({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String name, college, field;

    return Stack(
      children: [
        //image
        Container(
          // height: height,
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(20),
            image: const DecorationImage(
              image: NetworkImage(
                "https://images6.fanpop.com/image/photos/41700000/It-s-a-girl-prettygirls-41785078-300-494.jpg",
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),

        //km
        Positioned(
            left: 10,
            top: 20,
            child: Container(
                height: 30.h,
                width: 55.w,
                decoration: BoxDecoration(
                    color: const Color(0xff59D6D6),
                    borderRadius: BorderRadius.circular(5)),
                child: Row(
                  children: [
                    SizedBox(
                      width: 4.w,
                    ),
                    Icon(
                      MdiIcons.mapMarker,
                      size: 12.sp,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 4.w,
                    ),
                    Text(
                      '20 Km',
                      style: TextStyle(
                          fontSize: 12.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ))),

        //details

        Positioned(
          top: 320.h,
          left: 10.w,
          child: Text('Angel priya , 26',
              style: TextStyle(
                  fontSize: 27.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.w600)),
        ),
        Positioned(
            top: 370.h,
            left: 10.w,
            child: Row(
              children: [
                Icon(
                  MdiIcons.school,
                  color: Colors.white,
                  size: 25.sp,
                ),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  'Lucknow University',
                  style: TextStyle(
                    fontSize: 22.sp,
                    color: Colors.white,
                  ),
                )
              ],
            )),

        Positioned(
            top: 400.h,
            left: 10.w,
            child: Row(
              children: [
                Icon(
                  MdiIcons.briefcase,
                  color: Colors.white,
                  size: 25.sp,
                ),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  'Fashion designer',
                  style: TextStyle(
                    fontSize: 22.sp,
                    color: Colors.white,
                  ),
                )
              ],
            )),

        Positioned(
          top: 440.h,
          left: 40.w,
          child: Row(
            children: [
              Container(
                  height: 40.h,
                  width: 40.w,
                  decoration: BoxDecoration(
                      color: const Color(0xff59D6D6),
                      borderRadius: BorderRadius.circular(9)),
                  child: Icon(
                    MdiIcons.reload,
                    size: 25.sp,
                    color: Colors.white,
                  )),
              SizedBox(
                width: 20.w,
              ),
              Container(
                  height: 50.h,
                  width: 50.w,
                  decoration: BoxDecoration(
                      color: const Color(0xff59D6D6),
                      borderRadius: BorderRadius.circular(9)),
                  child: Icon(
                    Icons.clear,
                    size: 35.sp,
                    color: Colors.white,
                  )),
              SizedBox(
                width: 20.w,
              ),
              Container(
                  height: 70.h,
                  width: 60.w,
                  decoration: BoxDecoration(
                      color: const Color(0xff59D6D6),
                      borderRadius: BorderRadius.circular(12)),
                  child: Icon(
                    MdiIcons.rocketLaunch,
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    size: 40.sp,
                  )),
              SizedBox(
                width: 20.w,
              ),
              Container(
                  height: 50.h,
                  width: 50.w,
                  decoration: BoxDecoration(
                      color: const Color(0xff59D6D6),
                      borderRadius: BorderRadius.circular(9)),
                  child: Icon(
                    Icons.favorite,
                    size: 35.sp,
                    color: Colors.white,
                  )),
              SizedBox(
                width: 20.w,
              ),
              Container(
                  height: 40.h,
                  width: 40.w,
                  decoration: BoxDecoration(
                      color: const Color(0xff59D6D6),
                      borderRadius: BorderRadius.circular(9)),
                  child: Icon(
                    Icons.visibility,
                    size: 25.sp,
                    color: Colors.white,
                  )),
              SizedBox(
                width: 20.w,
              ),
            ],
          ),
        )
      ],
    );
  }
}
