import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:playmate/Colors/Colors.dart';
import 'package:playmate/Presentation/Games/Calendar/Past-Screen.dart';
import 'package:playmate/Presentation/Games/Calendar/Upcoming-Screen.dart';
import 'package:playmate/Presentation/Games/Game-List/Sports-List.dart';

class Gamesmenu extends StatefulWidget {
  const Gamesmenu({super.key});

  @override
  State<Gamesmenu> createState() => _GamesmenuState();
}

class _GamesmenuState extends State<Gamesmenu>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final List<String> tabs = ["Cricket", "Hockey", "Basketball"];

  final List<IconData> gameicon = [
    Icons.sports_cricket,
    Icons.sports_hockey,
    Icons.sports_basketball
  ];

  final List<Widget> screens = [Sportslist(), Sportslist(), Sportslist()];

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
            child: SizedBox(
              child: Column(
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
                      (index) => SizedBox(
                        width: 120,

                        child: Tab(
                          height: 30,
                          child: AnimatedBuilder(
                            animation: _tabController,
                            builder: (context, _) {
                              final bool isSelected =
                                  _tabController.index == index;

                              return Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    gameicon[index],
                                    size: 18,
                                    color: isSelected
                                        ? Colors.white
                                        : Colors.black, // 🎯
                                  ),
                                  const SizedBox(width: 8),
                                  Text(
                                    tabs[index],
                                    style: GoogleFonts.poppins(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                      color: isSelected
                                          ? Colors.white
                                          : Colors.black, // 🎯
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
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
