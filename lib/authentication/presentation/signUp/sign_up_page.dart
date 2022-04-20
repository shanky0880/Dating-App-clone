import 'package:auto_route/auto_route.dart';
import 'package:dating_application_screens/core/presentation/routes/routes.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SignUpPage extends HookConsumerWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: height,
              width: width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/signUpImages/signUp_bg.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 35.h,
              left: 20.w,
              child: Container(
                height: 120.h,
                width: 150.w,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/signUpImages/logo.png',
                    ),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 90.h,
              right: 40.w,
              child: InkWell(
                onTap: () {
                  AutoRouter.of(context).push(
                    const LogInRoute(),
                  );
                },
                child: Text(
                  "SIGN IN",
                  style: TextStyle(
                    fontSize: 22.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 180.h,
              left: 40.w,
              child: Container(
                height: 390.h,
                width: 280.w,
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 10.h,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Meet your",
                        style: TextStyle(
                          fontSize: 50.sp,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      Text(
                        "match with",
                        style: TextStyle(
                          fontSize: 50.sp,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      Text(
                        "your same",
                        style: TextStyle(
                          fontSize: 50.sp,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      Text(
                        "purpose",
                        style: TextStyle(
                          fontSize: 50.sp,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 230.h,
              left: 50.w,
              right: 50.w,
              child: Container(
                height: 65.h,
                width: 300.w,
                decoration: BoxDecoration(
                  color: const Color(0xff1976D2),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: SignUpMethods(
                  icon: Icon(
                    Icons.facebook,
                    size: 40.sp,
                    color: Colors.white,
                  ),
                  text: "Continue with Facebook",
                ),
              ),
            ),
            Positioned(
              bottom: 150.h,
              left: 50.w,
              right: 50.w,
              child: Container(
                height: 65.h,
                width: 300.w,
                decoration: BoxDecoration(
                  color: const Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 25.w,
                    ),
                    Icon(
                      Icons.g_mobiledata_outlined,
                      size: 40.sp,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      "Continue with google",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 70.h,
              left: 50.w,
              right: 50.w,
              child: Container(
                height: 65.h,
                width: 300.w,
                decoration: BoxDecoration(
                  color: const Color(0xff000000),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: SignUpMethods(
                  icon: Icon(
                    Icons.apple,
                    size: 40.sp,
                    color: Colors.white,
                  ),
                  text: "Continue with Apple",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SignUpMethods extends StatelessWidget {
  const SignUpMethods({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);
  final Icon icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: 25.w,
        ),
        icon,
        SizedBox(
          width: 10.w,
        ),
        Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 24.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
