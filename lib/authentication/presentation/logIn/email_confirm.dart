import 'package:auto_route/auto_route.dart';
import 'package:dating_application_screens/core/presentation/routes/routes.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmailConfirmPage extends StatelessWidget {
  const EmailConfirmPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            SizedBox(
              height: 50.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 30.w,
                ),
                InkWell(
                  onTap: () {
                    AutoRouter.of(context).push(const VerifyCodeRoute());
                  },
                  child: Icon(
                    Icons.arrow_back,
                    size: 24.sp,
                  ),
                ),
                SizedBox(
                  width: 120.w,
                ),
                Container(
                  height: 70.h,
                  width: 110.w,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/signUpImages/logo.png',
                      ),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 30.w,
              ),
              child: SizedBox(
                height: 100.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Enter your email and you will immediately receive',
                      style: Theme.of(context).textTheme.headline5!.copyWith(
                            fontSize: 16.sp,
                            color: Colors.grey,
                          ),
                    ),
                    Text(
                      "your login information from us.",
                      style: Theme.of(context).textTheme.headline5!.copyWith(
                            fontSize: 16.sp,
                            color: Colors.grey,
                          ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 260.h,
              width: 220.w,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/signUpImages/email_verify_page_image.png',
                  ),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(
              height: 50.h,
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
                      hintText: "E-mail address",
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 50.w,
              ),
              child: InkWell(
                onTap: () {
                  AutoRouter.of(context).push(const WelcomeRoute());
                },
                child: Container(
                  height: 70.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: const Color(0xff59D6D6),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Text(
                    "Recover",
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
