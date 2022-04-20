import 'package:auto_route/auto_route.dart';
import 'package:dating_application_screens/dashboard/a_discover/widget/indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class StoryPreview extends HookConsumerWidget {
  const StoryPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _currentPage = useState<int>(0);
    final _numberOfTabs = useState<int>(8);
    final isActive = useState<bool>(false);
    final pageController = usePageController(initialPage: 0);

    List<Widget> _buildPageIndicator() {
      List<Widget> list = [];
      for (int i = 0; i < _numberOfTabs.value; i++) {
        list.add(
          i == _currentPage.value
              ? IndicatorWidget(selected: !isActive.value)
              : IndicatorWidget(selected: isActive.value),
        );
      }
      return list;
    }

    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            PageView(
              // Todo
              // physics: const NeverScrollableScrollPhysics(),
              pageSnapping: true,
              controller: pageController,
              onPageChanged: (page) {
                _currentPage.value = page;
              },
              children: [
                Container(
                  // height: MediaQuery.of(context).size.height,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://www.whatsappimages.in/wp-content/uploads/2022/01/Girl-DP.jpg',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  // height: MediaQuery.of(context).size.height,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://storage.needpix.com/rsynced_images/girl-face-3789933_1280.jpg',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  // height: MediaQuery.of(context).size.height,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://i.pinimg.com/originals/f1/e7/6e/f1e76e5e30e000461e6775bf7ce28aad.jpg',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  // height: MediaQuery.of(context).size.height,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://i.pinimg.com/originals/f1/e7/6e/f1e76e5e30e000461e6775bf7ce28aad.jpg',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  // height: MediaQuery.of(context).size.height,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://i.pinimg.com/originals/f1/e7/6e/f1e76e5e30e000461e6775bf7ce28aad.jpg',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  // height: MediaQuery.of(context).size.height,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://www.whatsappimages.in/wp-content/uploads/2022/01/Girl-DP.jpg',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  // height: MediaQuery.of(context).size.height,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://i.pinimg.com/originals/f1/e7/6e/f1e76e5e30e000461e6775bf7ce28aad.jpg',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  // height: MediaQuery.of(context).size.height,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://www.whatsappimages.in/wp-content/uploads/2022/01/Girl-DP.jpg',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _buildPageIndicator(),
              ),
            ),
            Positioned(
              top: 50,
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      AutoRouter.of(context).pop();
                    },
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  SizedBox(
                    height: 50.h,
                    child: Image.network(
                        'https://cdn4.vectorstock.com/i/1000x1000/64/68/beautiful-girl-logo-design-template-spa-vector-3936468.jpg'),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Column(
                    children: const [
                      Text(
                        'Angle Priya',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        '06 min ago',
                        style: TextStyle(
                          color: Color.fromARGB(255, 73, 73, 73),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),

            // for sending the chat

            //    .......

            // Positioned(
            //   top: 520,
            //   left: 40,
            //   child: Container(
            //     height: 50,
            //     width: 250,
            //     color: Colors.black,
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
