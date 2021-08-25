import 'package:chateo/shared/theme/app_colors.dart';
import 'package:chateo/shared/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'presenter/chat_page.dart';
import 'presenter/contact_page.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({ Key? key }) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {

  int _tabIndex = 1;
  PageController _pageController = new PageController(initialPage: 1, keepPage: true);
  List<Widget> _contactActions = [
    new IconButton(
      onPressed: () {},
      icon: new Icon(
        Icons.add_rounded,
        color: AppColors.heading,
      ),
    ),
  ];
  List<Widget> _chatActions = [
    new IconButton(
      onPressed: () {},
      icon: new Icon(
        Icons.chat_bubble_outline_rounded,
        color: AppColors.heading,
      ),
    ),
    new IconButton(
      onPressed: () {},
      icon: new Icon(
        Icons.playlist_add_check_rounded,
        color: AppColors.heading,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: AppColors.background,
      appBar: new AppBar(
        elevation: 0,
        backgroundColor: AppColors.background,
        automaticallyImplyLeading: false,
        title: new Text(
          _mountTitle(),
          style: AppTextStyles.titleRegularHeading,
        ),
        actions: _mountActions(),
      ),
      body: new PageView(
        physics: new NeverScrollableScrollPhysics(),
        controller: _pageController,
        onPageChanged: pageChanged,
        children: [
          new ContactPage(),
          new ChatPage(),
          new Container(color: Colors.green),
        ],
      ),

      bottomNavigationBar: new Padding(
        padding: const EdgeInsets.all(8),
        child: new GNav(
          gap: 8,
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          rippleColor: AppColors.primary.withOpacity(0.3),
          duration: Duration(milliseconds: 400),
          tabBackgroundColor: AppColors.primary.withOpacity(0.87),
          tabBorderRadius: 16,
          color: AppColors.heading,
          activeColor: Colors.white,
          iconSize: 28,
          selectedIndex: _tabIndex,
          textStyle: AppTextStyles.trailingBackground,
          tabs: [
            new GButton(
              icon: Icons.person_outline_rounded,
              text: 'Contacts',
            ),
            new GButton(
              icon: Icons.chat_bubble_outline_rounded,
              text: 'Chats',
            ),
            new GButton(
              icon: Icons.more_horiz,
              text: 'More',
            ),
          ],
          onTabChange: onNavTap,
        ),
      ),
    );
  }

  String _mountTitle() {
    if (_tabIndex == 0) return 'Contacts';
    if (_tabIndex == 2) return 'More';

    return 'Chats';
  }

  List<Widget> _mountActions() {
    if (_tabIndex == 0) return _contactActions;
    if (_tabIndex == 2) return [];
    
    return _chatActions;
  }

  void pageChanged(int index) {
    setState(() {
      _tabIndex = index;
    });
  }

  void onNavTap(int index) {
    setState(() {
      _tabIndex = index;
      _pageController.animateToPage(
        index,
        duration: new Duration(milliseconds: 500),
        curve: Curves.ease
      );
    });
  }
}