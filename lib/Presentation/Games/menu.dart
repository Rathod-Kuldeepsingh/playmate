import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:playmate/Colors/Colors.dart';
import 'package:playmate/Presentation/Authentication-Screen/Forget.dart';
import 'package:playmate/Presentation/Authentication-Screen/Login.dart';
import 'package:playmate/Presentation/Authentication-Screen/Registration.dart';
import 'package:playmate/Presentation/Games/Calendar/Past-Screen.dart';
import 'package:playmate/Presentation/Games/Calendar/Upcoming-Screen.dart';
import 'package:playmate/Presentation/Onboarding-Screen/Onboardig.dart';

class menu extends StatefulWidget {
  const menu({super.key});

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> with SingleTickerProviderStateMixin {

  late TabController _tabController;

  final List<String> tabs = ["Upcoming", "Past"];

  final List<String> popmenu = [
    "Create Games",
    "Invite Player",
    "Share My Calendar",
    "My Booking",
  ];

  final List<IconData> popicon = [
    Icons.add_circle_outline,
    Icons.person_add_alt,
    Icons.share,
    Icons.calendar_month,
  ];

  final List<Widget> screens = [Upcomingscreen(), PastScreen()];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 226, 234, 232),
        elevation: 0,
        automaticallyImplyLeading: false,
        toolbarHeight: 0,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(65),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                TabBar(
                  controller: _tabController,
                  isScrollable: true,
                  dividerColor: Colors.transparent,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: BoxDecoration(
                    color: AppColors.darkGreen,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black,
                  labelPadding: const EdgeInsets.symmetric(horizontal: 1),
                  tabs: List.generate(
                    tabs.length,
                    (index) => Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      child: Text(
                        tabs[index],
                        style: GoogleFonts.poppins(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
                Spacer(),
                PopupMenuButton<int>(
                  color: AppColors.background,
                  icon: const Icon(Icons.more_vert, color: Colors.black),
                  onSelected: (val) {
                    final selectedItem = popmenu[val];
                    debugPrint("Selected: $selectedItem");
                    switch (val) {
                      case 0:
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => const Onboarding()),
                        );
                        break;
                      case 1:
                        // Invite Player
                        break;
                      case 2:
                        // Share My Calendar
                        break;
                      case 3:
                        // My Booking
                        break;
                    }
                  },

                  itemBuilder: (context) => List.generate(
                    popmenu.length,
                    (index) => PopupMenuItem<int>(
                      value: index,
                      child: Row(
                        children: [
                          Icon(
                            popicon[index], 
                            size: 18,
                            color: AppColors.darkGreen,
                          ),
                          const SizedBox(width: 10),
                          Text(popmenu[index]),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        physics: NeverScrollableScrollPhysics(),
        children: screens,
      ),
    );
  }
}

