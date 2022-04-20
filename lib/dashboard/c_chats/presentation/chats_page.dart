import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ChatsPage extends HookConsumerWidget {
  const ChatsPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 204, 235, 249),
        // appBar: AppBar(title: const Text('Sopia')),
        body: ListView(
          children: [
            SizedBox(
              height: 50.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 25.w,
              ),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                height: 75.h,
                width: 1.sw,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    const Icon(Icons.arrow_back),
                    SizedBox(
                      width: 40.w,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Sophia',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'online',
                          style: TextStyle(color: Colors.green),
                        ),
                      ],
                    ),
                    SizedBox(width: 120.w),
                    Image.asset('assets/images/profileimages/video.png'),
                    SizedBox(
                      width: 15.w,
                    ),
                    Image.asset('assets/images/profileimages/call.png'),
                    SizedBox(
                      width: 15.w,
                    ),
                    Image.asset('assets/images/profileimages/Layer.png'),
                    SizedBox(
                      width: 0.w,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            Padding(
              padding: EdgeInsets.only(right: 70.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 50.h,
                    width: 70.w,
                    decoration: BoxDecoration(
                        color: const Color(0xFF59D6D6),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                      child: Text(
                        'Hello',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 70.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 50.h,
                    width: 70.w,
                    decoration: BoxDecoration(
                        color: const Color(0xFF59D6D6),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                      child: Text(
                        '...',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 70.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset('assets/images/profileimages/heart.png'),
                ],
              ),
            ),
            SizedBox(
              height: 80.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 50.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset('assets/images/profileimages/hearts.png')
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 50.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset('assets/images/profileimages/hear.png'),
                  const Spacer(),
                  //const TextField()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
