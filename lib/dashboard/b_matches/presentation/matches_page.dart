import 'package:dating_application_screens/dashboard/b_matches/widget/member_card.dart';
import 'package:dating_application_screens/dashboard/b_matches/widget/nearby_tab.dart';
import 'package:dating_application_screens/dashboard/b_matches/widget/new_tab.dart';
import 'package:dating_application_screens/dashboard/b_matches/widget/online_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MatchesPage extends HookConsumerWidget {
  const MatchesPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _height = MediaQuery.of(context).size.height;
    final tabBarController = useTabController(initialLength: 4);
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Member',
            style: TextStyle(
                fontSize: 22.sp,
                fontWeight: FontWeight.w700,
                color: Colors.black),
          ),
          leading: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height: 10.h,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 209, 209, 209),
                    borderRadius: BorderRadius.circular(8.0)),
                child: Image.asset(
                  'assets/images/discoverDashboardImages/dashboard_filter_image.png',
                  color: Colors.black,
                ),
              ),
            ),
          ],
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.transparent,
          bottom: TabBar(
            labelColor: Colors.black,
            labelStyle: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 22.sp,
            ),
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 4,
            indicatorColor: const Color(0xff59D6D6),
            controller: tabBarController,
            tabs: const [
              Tab(
                text: 'All',
              ),
              Tab(
                text: 'Online',
              ),
              Tab(
                text: 'New',
              ),
              Tab(
                text: 'Nearby',
              ),
            ],
          ),
        ),
        body: SizedBox(
          height: _height,
          child: TabBarView(
            controller: tabBarController,
            children: const [
              MemberCard(),
              OnlineCard(),
              NewTab(),
              Nearbytab(),
            ],
          ),
        ),
      ),
    );
  }
}
