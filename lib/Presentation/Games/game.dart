import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:playmate/Colors/Colors.dart';
import 'package:playmate/Presentation/Authentication-Screen/Forget.dart';
import 'package:playmate/Presentation/Authentication-Screen/Login.dart';
import 'package:playmate/Presentation/Authentication-Screen/Registration.dart';
import 'package:playmate/Presentation/Games/menu.dart';
import 'package:playmate/Presentation/Onboarding-Screen/Onboardig.dart';

class SimpleTabView extends StatefulWidget {
  const SimpleTabView({super.key});

  @override
  State<SimpleTabView> createState() => _SimpleTabViewState();
}

class _SimpleTabViewState extends State<SimpleTabView>
    with SingleTickerProviderStateMixin {
  bool isUpcoming = true;
  late TabController _tabController;

  final List<String> tabs = [
    "Calendar",
    "Recommended",
    "My Sports",
    "Other Sports",
  ];

  final List<Widget> screens = [
    menu(),
    Login(),
    Registration(),
    Forget(),
  ];

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
          preferredSize: const Size.fromHeight(55),
          child: Padding(
            padding: const EdgeInsets.all(8),
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
                  labelPadding: const EdgeInsets.symmetric(horizontal: 1,),
               
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
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
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
      body: TabBarView(
        controller: _tabController,
        physics: const BouncingScrollPhysics(),
        children: screens,
      ),
    );
  }
}
