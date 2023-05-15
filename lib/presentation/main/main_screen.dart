import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kisan_app/core/utils/themes.dart';
import 'package:kisan_app/presentation/favorite/favorite_screen.dart';
import 'package:kisan_app/presentation/home/home_screen.dart';
import 'package:kisan_app/presentation/profile/profile_screen.dart';

class MainScreen extends StatefulWidget {
  MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> _pages = [
    HomeScreen(),
    FavoriteScreen(),
    ProfileScreen(),
  ];

  int _selectedIndex = 0;

  void onItemTapped(int index) {
    _selectedIndex = index;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomAppBar(
          padding: EdgeInsets.zero,
          height: 60,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  onItemTapped(0);
                },
                child: Container(
                  height: 55.h,
                  width: MediaQuery.of(context).size.width * .3,
                  margin: EdgeInsets.only(top: 0.h, bottom: 10.h, left: 0.w),
                  decoration: BoxDecoration(
                      color: _selectedIndex == 0 ? cPrimaryColor : cWhite,
                      borderRadius: BorderRadius.circular(10.r)),
                  child: Icon(
                    Icons.home,
                    color: _selectedIndex == 0 ? Colors.white : cBlack,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  onItemTapped(1);
                },
                child: Container(
                  height: 55.h,
                  width: MediaQuery.of(context).size.width * .3,
                  margin: EdgeInsets.only(top: 0.h, bottom: 10.h, left: 0.w),
                  decoration: BoxDecoration(
                      color: _selectedIndex == 1 ? cPrimaryColor : cWhite,
                      borderRadius: BorderRadius.circular(10.r)),
                  child: Icon(
                    Icons.favorite_outline,
                    color: _selectedIndex == 1 ? Colors.white : cBlack,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  onItemTapped(2);
                },
                child: Container(
                  height: 55.h,
                  width: MediaQuery.of(context).size.width * .3,
                  margin: EdgeInsets.only(top: 0.h, bottom: 10.h, left: 0.w),
                  decoration: BoxDecoration(
                      color: _selectedIndex == 2 ? cPrimaryColor : cWhite,
                      borderRadius: BorderRadius.circular(10.r)),
                  child: Icon(
                    Icons.person,
                    color: _selectedIndex == 2 ? Colors.white : cBlack,
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
