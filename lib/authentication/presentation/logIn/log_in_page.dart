import 'package:auto_route/auto_route.dart';
import 'package:dating_application_screens/core/presentation/routes/routes.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: height,
          width: width,
          color: Colors.white,
          child: ListView(
            children: [
              SizedBox(
                height: 40.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20.w,
                  ),
                  Container(
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
                  SizedBox(
                    width: 180.w,
                  ),
                  InkWell(
                    onTap: () {
                      AutoRouter.of(context).push(const SignUpRoute());
                    },
                    child: const Text(
                      "BACK",
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              SizedBox(
                height: 150.h,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 30.w,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome",
                        style: TextStyle(
                          fontSize: 50.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        "Back",
                        style: TextStyle(
                          fontSize: 50.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50.h,
                    width: 40.w,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 226, 224, 224),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Icon(
                      Icons.facebook_rounded,
                      size: 40.sp,
                    ),
                  ),
                  SizedBox(
                    width: 30.w,
                  ),
                  Container(
                    height: 50.h,
                    width: 40.w,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 226, 224, 224),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Icon(
                      Icons.g_mobiledata_outlined,
                      size: 40.sp,
                    ),
                  ),
                  SizedBox(
                    width: 30.w,
                  ),
                  Container(
                    height: 50.h,
                    width: 40.w,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 226, 224, 224),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Icon(
                      Icons.apple,
                      size: 40.sp,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 70.w,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 2.w,
                        color: Colors.black,
                        height: 5.h,
                      ),
                    ),
                    Text(
                      "OR",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 2.w,
                        color: Colors.black,
                        height: 5.h,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 35.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 50.w,
                ),
                child: Container(
                  height: 65.h,
                  width: 300.w,
                  decoration: BoxDecoration(
                    color: const Color(0xffE3E3E3),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 15.w,
                    ),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Enter e-mail address",
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 50.w,
                ),
                child: Container(
                  height: 65.h,
                  width: 300.w,
                  decoration: BoxDecoration(
                    color: const Color(0xffE3E3E3),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 15.w,
                    ),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Password",
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 50.w,
                ),
                child: Container(
                  height: 70.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: const Color(0xff59D6D6),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Text(
                    "Log in with email",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              Center(
                child: InkWell(
                  onTap: () {
                    AutoRouter.of(context).push(const VerifyCodeRoute());
                  },
                  child: const Text("Forgot Password"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
