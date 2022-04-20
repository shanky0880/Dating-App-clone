import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Deactivateaccount extends StatelessWidget {
  const Deactivateaccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          const Center(
            child: CircleAvatar(
              radius: 60,
              backgroundImage:
                  AssetImage('assets/images/profileimages/profileimg.jpg'),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          const Text('Rashid,24'),
          SizedBox(height: 50.h),
          Padding(
            padding: EdgeInsets.only(left: 25.w, bottom: 15.h),
            child: Row(
              children: const [
                Text(
                  'Your account is deactivated',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 25.w),
            child: Row(
              children: const [
                Text(
                  'Lorem Ipsum is simply dummy text of the printing ',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: SizedBox(
            width: 200.w, child: const Center(child: Text('Active Account'))),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
