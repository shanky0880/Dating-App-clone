import 'package:auto_route/auto_route.dart';
import 'package:dating_application_screens/core/presentation/routes/routes.gr.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfilePage extends HookConsumerWidget {
  const ProfilePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final height = MediaQuery.of(context).size.height;

    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Profile",
            style: TextStyle(
              fontSize: 22.sp,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          leading: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 14.0),
              child: Icon(
                Icons.notifications,
                color: Colors.black,
              ),
            ),
          ],
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: ListView(
          children: [
            Column(
              children: const [
                CircleAvatar(
                  radius: 60,
                  backgroundImage:
                      AssetImage('assets/images/profileimages/profileimg.jpg'),
                )
              ],
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  children: [
                    Text(
                      'Rashid,24',
                      style: TextStyle(
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'James ID: 054103',
                      style: TextStyle(
                        color: Colors.grey.shade400,
                        fontSize: 12.sp,
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    ElevatedButton(
                        child: const Text(
                          'View Your Profile',
                        ),
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary: const Color(0xFF59D6D6),
                            shape: RoundedRectangleBorder(
                                //to set border radius to button
                                borderRadius: BorderRadius.circular(10.r)),
                            padding: const EdgeInsets.all(
                                20) //,content padding inside button
                            )),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30.h),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/images/profileimages/vipaccount.png'),
                  const Padding(padding: EdgeInsets.all(7)),
                  const Text(
                    'VIP Account',
                    style: TextStyle(
                      // fontSize:,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, top: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/images/profileimages/24-hours.png'),
                  const Padding(padding: EdgeInsets.all(7)),
                  const Text(
                    'Single service Packages',
                    style: TextStyle(
                      // fontSize: 22.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30.w, top: 20.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/images/profileimages/pencil.png'),
                  const Padding(padding: EdgeInsets.all(7)),
                  const Text(
                    'Edit profile',
                    style: TextStyle(
                      // fontSize: 22.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30.w, top: 20.h),
              child: GestureDetector(
                onTap: () {
                  AutoRouter.of(context).push(const ProfileSettingRoute());
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/images/profileimages/settings.png'),
                    const Padding(padding: EdgeInsets.all(7)),
                    const Text(
                      'Setting',
                      style: TextStyle(
                        // fontSize: 22.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30.0.w, top: 20.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/images/profileimages/giftbox.png'),
                  const Padding(padding: EdgeInsets.all(7)),
                  const Text(
                    'Prize Draw',
                    style: TextStyle(
                      // fontSize: 22.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30.w, top: 20.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/images/profileimages/event.png'),
                  const Padding(padding: EdgeInsets.all(7)),
                  const Text(
                    'Events',
                    style: TextStyle(
                      // fontSize: 22.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30.w, top: 20.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/images/profileimages/diary.png'),
                  const Padding(padding: EdgeInsets.all(7)),
                  const Text(
                    'Diary',
                    style: TextStyle(
                      // fontSize: 22.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30.0.w, top: 20.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/images/profileimages/information.png'),
                  Padding(padding: EdgeInsets.all(7.h)),
                  const Text(
                    'About us',
                    style: TextStyle(
                      // fontSize: 22.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30.w, top: 20.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/images/profileimages/terms.png'),
                  const Padding(padding: EdgeInsets.all(7)),
                  const Text(
                    'Terms & Conditions',
                    style: TextStyle(
                      // fontSize: 22.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30.w, top: 20.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/images/profileimages/block.png'),
                  const Padding(padding: EdgeInsets.all(7)),
                  const Text(
                    'Block User',
                    style: TextStyle(
                      // fontSize: 22.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30.w, top: 20.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/images/profileimages/languages.png'),
                  const Padding(padding: EdgeInsets.all(7)),
                  const Text(
                    'Language',
                    style: TextStyle(
                      // fontSize: 22.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30.w, top: 20.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/images/profileimages/logout.png'),
                  const Padding(padding: EdgeInsets.all(7)),
                  const Text(
                    'Logout',
                    style: TextStyle(
                      // fontSize: 22.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
