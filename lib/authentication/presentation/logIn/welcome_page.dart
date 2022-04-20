import 'package:auto_route/auto_route.dart';
import 'package:dating_application_screens/core/presentation/routes/routes.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            SizedBox(
              height: 60.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 30.w,
              ),
              child: SizedBox(
                height: 160.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome to",
                      style: TextStyle(
                        fontSize: 50.sp,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff59D6D6),
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Text(
                      "James Club",
                      style: TextStyle(
                        fontSize: 50.sp,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff59D6D6),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 260.h,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/signUpImages/welcome_page_image.png',
                  ),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 30.w,
              ),
              child: SizedBox(
                height: 200.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Let's get to know your better",
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    Text(
                      "Our purpose is to connect people with the same goal as you, whatever it may be... love for a lifetime, a romance, a love for the better ages,a traveling companion, casual sex, ... join the James Club 248 and be who you want to be !",
                      style: TextStyle(
                        fontSize: 18.sp,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 120.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 50.w,
              ),
              child: InkWell(
                onTap: () {
                  AutoRouter.of(context).push(const DashBoardRoute());
                },
                child: Container(
                  height: 70.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: const Color(0xff59D6D6),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Text(
                    "Let's go!",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
