import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:playmate/Colors/Colors.dart';

class Userprofile extends StatefulWidget {
  const Userprofile({super.key});

  @override
  State<Userprofile> createState() => _UserprofileState();
}

class _UserprofileState extends State<Userprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: const Color.fromARGB(255, 244, 252, 248),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 244, 252, 248),
        elevation: 0,
        scrolledUnderElevation: 0,
        automaticallyImplyLeading: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              buildcontainer(context),
              SizedBox(height: 10),
              myAccountTile(context),
              moresetting(context),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Mbee ©2024. All rights reserved.",
                      style: GoogleFonts.poppins(
                        fontSize: 11,
                        color: Color.fromRGBO(112, 112, 112, 1),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      'v0.0.1',
                      style: GoogleFonts.poppins(
                        fontSize: 11,
                        color: Color.fromRGBO(112, 112, 112, 1),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildcontainer(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        shape: BoxShape.rectangle,
        border: BorderDirectional(
          top: BorderSide(
            width: 1,
            style: BorderStyle.solid,
            color: Colors.grey.shade400,
          ),
          end: BorderSide(
            width: 1,
            style: BorderStyle.solid,
            color: Colors.grey.shade400,
          ),
          start: BorderSide(
            width: 1,
            style: BorderStyle.solid,
            color: Colors.grey.shade400,
          ),
          bottom: BorderSide(
            width: 1,
            style: BorderStyle.solid,
            color: Colors.grey.shade400,
          ),
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                SizedBox(
                  width: 73,
                  height: 73,
                  child: CircleAvatar(
                    backgroundColor: const Color.fromARGB(255, 220, 241, 229),
                    child: Text(
                      "R",
                      style: GoogleFonts.poppins(
                        fontSize: 24,
                        color: AppColors.darkGreen,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Rathod Kuldeepsingh",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      Container(
                        // let the container size adapt
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        height: 30,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(252, 71, 63, 0.1),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Color.fromRGBO(254, 153, 0, 0.15),
                            style: BorderStyle.solid,
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "PlayMate ID: ",
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: Color.fromRGBO(110, 109, 122, 1),
                                ),
                              ),
                            ),
                            Text(
                              "384 833",
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10),
              ],
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    ),
  );
}

Widget myAccountTile(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: InkWell(
      onTap: () {
        showFloatingSnackBar(context);
      },
      child: Container(
        height: 64,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 8)],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  SizedBox(
                    width: 36,
                    height: 36,
                    child: CircleAvatar(
                      backgroundColor: const Color.fromARGB(255, 220, 241, 229),
                      child: Icon(
                        Icons.person_2_outlined,
                        size: 18,
                        color: AppColors.darkGreen,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "My Account",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {
                      showFloatingSnackBar(context);
                    },
                    child: Icon(
                      size: 18,
                      Icons.arrow_forward_ios,
                      color: AppColors.darkGreen,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

void showFloatingSnackBar(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        'Coming Soon!',
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
      ),
      behavior: SnackBarBehavior.floating, // FLOATING SNACKBAR
      margin: EdgeInsets.only(bottom: 80, left: 20, right: 20), // POSITION
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      backgroundColor: Colors.black87,
      duration: Duration(milliseconds: 1100),
    ),
  );
}

Widget moresetting(BuildContext context) {
  final List<Map<String, String>> items = [
    {"name": "My Booking1", "icon": "asset/time.png"},
    {"name": "View Player", "icon": "asset/people.png"},
    {"name": "Passbook", "icon": "asset/passbook.png"},
    {"name": "Offers", "icon": "asset/discount.png"},
    {"name": "Blogs", "icon": "asset/blogging.png"},
    {"name": "Invite & Earn", "icon": "asset/invite.png"},
    {"name": "Privacy", "icon": "asset/insurance.png"},
    {"name": "Help & Support", "icon": "asset/support.png"},
    {"name": "Logout", "icon": "asset/logout.png"},
  ];

  return Padding(
    padding: const EdgeInsets.all(10),
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 8)],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
            child: Text(
              "More Details",
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ),

          ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: items.length,
            separatorBuilder: (_, __) =>
                Container(height: 1, color: Colors.grey.shade300),
            itemBuilder: (context, index) {
              final item = items[index];
              return ListTile(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                leading: CircleAvatar(
                  radius: 22,
                  backgroundColor: const Color.fromARGB(255, 220, 241, 229),
                  child: Image.asset(
                    item["icon"]!,
                    width: 20,
                    height: 20,
                    color: AppColors.darkGreen,
                  ),
                ),
                title: Text(
                  item["name"]!,
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                  color: AppColors.darkGreen,
                ),
                onTap: () {
                  showFloatingSnackBar(context);
                },
              );
            },
          ),
          SizedBox(height: 12),
        ],
      ),
    ),
  );
}
