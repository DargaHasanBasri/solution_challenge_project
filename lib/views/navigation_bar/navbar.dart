import 'package:solution_challenge_project/export.dart';
import 'package:solution_challenge_project/views/profile_page/profile.dart';
import 'package:solution_challenge_project/views/share_campaign_page/choose_photo.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  List pages = [const HomePage(), const ChoosePhoto(), const ProfileScreen()];

  int currentIndex = 0;
  void onTab(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTab,
        currentIndex: currentIndex,
        selectedItemColor: AppConstants.mainOrange.withOpacity(0.7),
        unselectedItemColor: AppConstants.mainBlue.withOpacity(0.7),
        showSelectedLabels: true,
        items: const [
          BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              label: 'Add photo', icon: Icon(Icons.add_box)),
          BottomNavigationBarItem(label: 'Profile', icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}
