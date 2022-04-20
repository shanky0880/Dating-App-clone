import 'package:dating_application_screens/dashboard/a_discover/presentation/discover_page.dart';
import 'package:dating_application_screens/dashboard/b_matches/presentation/matches_page.dart';
import 'package:dating_application_screens/dashboard/c_chats/presentation/chats_page.dart';
import 'package:dating_application_screens/dashboard/d_profile/presentation/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DashBoardPage extends HookConsumerWidget {
  const DashBoardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var _currentIndex = useState<int>(0);
    final screens = [
      const DiscoverPage(),
      const MatchesPage(),
      const ChatsPage(),
      const ProfilePage(),
    ];
    return Scaffold(
      body: screens[_currentIndex.value],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex.value,
        selectedItemColor: const Color(0xff59D6D6),
        unselectedItemColor: const Color(0xffA5A5A5),
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          _currentIndex.value = index;
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            label: "Discover",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border_outlined,
            ),
            label: "Matches",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat,
            ),
            label: "Chats",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
