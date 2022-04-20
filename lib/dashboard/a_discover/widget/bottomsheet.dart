import 'package:dating_application_screens/dashboard/a_discover/widget/Slider.dart';
import 'package:dating_application_screens/dashboard/a_discover/widget/dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class BottomSheetScreen extends StatelessWidget {
  const BottomSheetScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        SizedBox(
          height: 570.h,
          //color: Colors.blue[400],
          child: ListView(
            children: [
              Center(
                child: Container(
                  height: 5,
                  width: 70,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              const Text('Name'),
              Container(
                margin: EdgeInsets.only(top: 10.h),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                      color: Colors.grey, // set border color
                      width: 1.0.w), // set border width
                  borderRadius: const BorderRadius.all(
                      Radius.circular(10.0)), // set rounded corner radius
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 8.0.w),
                  child: const TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              const Text('Age Between'),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(height: 20.h, width: 200.w, child: const SlideAble()),
              SizedBox(
                height: 20.h,
              ),
              const Text('Profession'),
              Container(
                margin: const EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                      color: Colors.grey, // set border color
                      width: 1.0), // set border width
                  borderRadius: const BorderRadius.all(
                      Radius.circular(10.0)), // set rounded corner radius
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 8.0.w),
                  child: const TextField(
                    decoration: InputDecoration(
                        icon: Icon(
                          MdiIcons.account,
                        ),
                        border: InputBorder.none,
                        hintText: 'Enter your Profession'),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              const Text('Location'),
              Container(
                margin: EdgeInsets.only(top: 10.h),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                      color: Colors.grey, // set border color
                      width: 1.0.w), // set border width
                  borderRadius: const BorderRadius.all(
                      Radius.circular(10.0)), // set rounded corner radius
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 8.0.w),
                  child: const TextField(
                    decoration: InputDecoration(
                        icon: Icon(
                          MdiIcons.mapMarker,
                        ),
                        border: InputBorder.none,
                        hintText: 'Pakistan'),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              const Text('Children'),
              Container(
                height: 70.h,
                margin: EdgeInsets.only(top: 10.h),
                padding: EdgeInsets.only(
                    left: 5.w, right: 5.w, top: 2.h, bottom: 2.h),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1.0.w),
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                ),
                child: const DropDownbutton(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
