import 'package:auto_route/auto_route.dart';
import 'package:dating_application_screens/core/presentation/routes/routes.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VerifyCodePage extends StatelessWidget {
  const VerifyCodePage({Key? key}) : super(key: key);

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
                    AutoRouter.of(context).push(const LogInRoute());
                  },
                  child: Icon(
                    Icons.arrow_back,
                    size: 24.sp,
                  ),
                ),
                SizedBox(
                  width: 80.w,
                ),
                Text(
                  "Verification Code",
                  style: TextStyle(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 60.h,
            ),
            Container(
              height: 120.h,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/signUpImages/verification_code_image.png',
                  ),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Center(
              child: InkWell(
                onTap: () {
                  AutoRouter.of(context).push(const EmailConfirmRoute());
                },
                child: Text(
                  "Verification Code",
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
