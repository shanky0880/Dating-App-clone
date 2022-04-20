import 'package:dating_application_screens/dashboard/a_discover/presentation/StoriesPreview.dart';
import 'package:dating_application_screens/dashboard/a_discover/widget/bottomsheet.dart';
import 'package:dating_application_screens/dashboard/a_discover/widget/swipecontainer1.dart';
import 'package:dating_application_screens/dashboard/a_discover/widget/swipecontainer2.dart';
import 'package:dating_application_screens/dashboard/a_discover/widget/swipecontainer3.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:swipeable_card_stack/swipeable_card_stack.dart';

class DiscoverPage extends HookConsumerWidget {
  const DiscoverPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final height = MediaQuery.of(context).size.height;
    int counter = 0;
    late final _cardController = SwipeableCardSectionController();
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 20.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 20.w,
              ),
              Container(
                height: 50.h,
                width: 50.w,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/discoverDashboardImages/dashboard_menu_image.png'),
                  ),
                ),
              ),
              SizedBox(
                width: 100.w,
              ),
              Text(
                "Discover",
                style: TextStyle(
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                width: 120.w,
              ),
              const Icon(
                Icons.notifications,
              )
            ],
          ),
          SizedBox(
            height: 15.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 30.w,
            ),
            child: Container(
              padding: EdgeInsets.zero,
              height: 65.h,
              width: 300.w,
              decoration: BoxDecoration(
                color: const Color(0xffE3E3E3),
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  left: 15.w,
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: "Find Partner",
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.zero,
                      height: 65.h,
                      width: 60.w,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: const Color(0xff59D6D6),
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
                              context: context,
                              isScrollControlled: true,
                              backgroundColor: Colors.white,
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.vertical(
                                top: Radius.circular(40),
                              )),
                              builder: (context) => const Padding(
                                    padding: EdgeInsets.all(25.0),
                                    child: BottomSheetScreen(),
                                  ));
                        },
                        child: Image.asset(
                            'assets/images/discoverDashboardImages/dashboard_filter_image.png'),
                      ),
                    ),
                  ],
                ),
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const StoryPreview()),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.zero,
                    height: 65.h,
                    width: 60.w,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 196, 196, 196),
                      image: const DecorationImage(
                          image: NetworkImage(
                            'https://i.pinimg.com/564x/6f/de/85/6fde85b86c86526af5e99ce85f57432e.jpg',
                          ),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.zero,
                  height: 65.h,
                  width: 60.w,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 196, 196, 196),
                    image: const DecorationImage(
                        image: NetworkImage(
                          'https://i.ytimg.com/vi/qBB_QOZNEdc/maxresdefault.jpg',
                        ),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
                Container(
                  padding: EdgeInsets.zero,
                  height: 65.h,
                  width: 60.w,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 196, 196, 196),
                    image: const DecorationImage(
                        image: NetworkImage(
                          'https://images6.fanpop.com/image/photos/41700000/sati-kazanova-1-prettygirls-41785054-300-389.jpg',
                        ),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
                Container(
                  padding: EdgeInsets.zero,
                  height: 65.h,
                  width: 60.w,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 196, 196, 196),
                    image: const DecorationImage(
                        image: NetworkImage(
                          'https://images6.fanpop.com/image/photos/41700000/It-s-a-girl-prettygirls-41785092-300-400.jpg',
                        ),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
                Container(
                  padding: EdgeInsets.zero,
                  height: 65.h,
                  width: 60.w,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 196, 196, 196),
                    image: const DecorationImage(
                        image: NetworkImage(
                          'https://images6.fanpop.com/image/photos/41700000/It-s-a-girl-prettygirls-41785081-300-421.jpg',
                        ),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          SizedBox(
            height: height * 0.6,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SwipeableCardsSection(
                  cardController: _cardController,
                  context: context,
                  items: const [
                    SwipeContainer1(),
                    SwipeContainer2(),
                    SwipeContainer3(),
                  ],
                  onCardSwiped: (dir, index, widget) {
                    //Add the next card
                    if (counter <= 20) {
                      _cardController.addItem(
                        const SwipeContainer2(),
                      );
                      counter++;
                    }
                  },
                  enableSwipeUp: true,
                  enableSwipeDown: true,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
