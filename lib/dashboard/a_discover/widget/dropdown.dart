import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class DropDownbutton extends StatefulWidget {
  const DropDownbutton({Key? key}) : super(key: key);

  @override
  _DropDownbuttonState createState() => _DropDownbuttonState();
}

class _DropDownbuttonState extends State<DropDownbutton> {
  // Initial Selected Value
  String dropdownvalue = 'Select any option below';

  // List of items in our dropdown menu
  var items = [
    'Select any option below',
    'Yes',
    'No',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 8.0.w),
          child: const Icon(
            MdiIcons.account,
            size: 15,
          ),
        ),
        DropdownButton(
          // Initial Value
          value: dropdownvalue,

          // Down Arrow Icon
          icon: const Icon(Icons.keyboard_arrow_down),
          iconSize: 20,

          // Array list of items
          items: items.map((String items) {
            return DropdownMenuItem(
              value: items,
              child: Padding(
                padding: EdgeInsets.only(right: 80.0.w, left: 13.w),
                child: Text(items),
              ),
            );
          }).toList(),
          // After selecting the desired option,it will
          // change button value to selected value
          onChanged: (String? newValue) {
            setState(() {
              dropdownvalue = newValue!;
            });
          },
        ),
      ],
    ));
  }
}
