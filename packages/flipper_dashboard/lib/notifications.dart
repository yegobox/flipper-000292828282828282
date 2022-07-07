import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int tabselected = 0;
  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 17.81,
            ),
            SizedBox(
                height: 17.81,
                child: Text(
                  "Transactions",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      color: const Color(0xff000000)),
                )),
            Divider(color: const Color(0xff000000).withOpacity(0.25)),
            // give the tab bar a height [can change hheight to preferred height]
            Padding(
              padding: const EdgeInsets.fromLTRB(19.0, 2.5, 19.0, 2.5),
              child: Container(
                height: 46,
                decoration: BoxDecoration(
                  color: const Color(0xffE5E5E5),
                  borderRadius: BorderRadius.circular(
                    7.0,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(2.0, 2.5, 2.5, 2.5),
                  child: TabBar(
                    controller: _tabController,
                    // give the indicator a decoration (color and border radius)
                    indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        7.0,
                      ),
                      color: const Color(0xffFFFFFF),
                    ),
                    labelColor: Colors.black,
                    // labelStyle: tabLabelStyle,
                    // unselectedLabelColor: Colors.black,
                    // indicatorColor: Colors.black,
                    tabs: const [
                      // first tab [you can add an icon using the icon property]
                      SizedBox(
                        height: 41,
                        child: Tab(
                          text: 'Account',
                        ),
                      ),

                      // second tab [you can add an icon using the icon property]
                      SizedBox(
                        height: 41,
                        child: Tab(
                          text: 'What\'s new',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // tab bar view here
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: const [
                  // first tab bar view widget
                  Center(child: Text("One")),
                  Center(
                    child: Text(
                      'two',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
