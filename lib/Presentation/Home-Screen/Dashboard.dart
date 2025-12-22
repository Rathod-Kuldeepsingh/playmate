import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:playmate/Colors/Colors.dart';
import 'package:playmate/Presentation/Games/game.dart';
import 'package:playmate/Presentation/Home-Screen/Profile.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
    int _selectedIndex = 0;

  final List<Widget> _pages = [
    Center(child: Text("Dashboard", style: TextStyle(fontSize: 22))),
    SimpleTabView(),
    Center(child: Text("Community", style: TextStyle(fontSize: 22))),
    Center(child: Text("Service", style: TextStyle(fontSize: 22))),
    Center(child: Text("Society", style: TextStyle(fontSize: 22))),
  ];

  void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        scrolledUnderElevation: 0,
        title: Text(
          "Dashboard",
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1),
          child: Container(height: 1, color: Colors.grey.shade300),
        ),
        centerTitle: false,
        actions: [
            IconButton(
            icon: const Icon(Icons.add),
            iconSize: 28,
            color: AppColors.textDark,
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.notifications_none),
            iconSize: 28,
             color: AppColors.textDark,
            onPressed: () {},
          ),

          const SizedBox(width: 10),

          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Userprofile()),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 15),
              child: SizedBox(
                width: 30,
                height: 30,
                child: CircleAvatar(
                  radius: 22,
                  backgroundColor: AppColors.mint,
                  child: Text(
                    "J",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontSize: 18,
                        color: AppColors.darkGreen,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: _pages[_selectedIndex],
       bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 6)],
        ),
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          backgroundColor: Colors.white,
          onTap: _onTap,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppColors.darkGreen,
          unselectedItemColor: Color.fromRGBO(110, 109, 122, 1),
          selectedLabelStyle: GoogleFonts.poppins(
            textStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
          ),
          unselectedLabelStyle: GoogleFonts.poppins(
            textStyle: TextStyle(
              fontSize: 12,
              color: Color(0xFF6E6D7A),
              fontWeight: FontWeight.w500,
            ),
          ),

          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              activeIcon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
             icon: Icon(Icons.group_outlined),
              label: "Play",
              activeIcon:Icon(Icons.group),
            ),
            BottomNavigationBarItem(
               icon: Icon(Icons.calendar_month_outlined),
              activeIcon: Icon(Icons.calendar_month),
              label: "Booking",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined),
              activeIcon:Icon(Icons.person_2),
              label: "Profile",
            ),
          ],
        ),)
    );
  }
}