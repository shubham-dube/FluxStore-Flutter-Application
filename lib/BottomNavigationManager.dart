import 'package:flutter/material.dart';
import 'Screens/HomeScreen/HomeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomNavBarController extends StatefulWidget {
  const BottomNavBarController({super.key});

  @override
  State<BottomNavBarController> createState() => _BottomNavBarController();
}

class _BottomNavBarController extends State<BottomNavBarController> {
  int _currentIndex = 0;

  static final List<Widget> screens =  [
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 25.h,
      ),

      body: screens[_currentIndex],

      bottomNavigationBar: SizedBox(
        height: 45.sp,
        child: BottomNavigationBar(
          currentIndex: _currentIndex,

          iconSize: 19.sp,
          selectedItemColor: Colors.lightBlue,
          unselectedItemColor: Colors.black87,
          selectedFontSize: 0.sp, // To reduce Bottom Margin

          type: BottomNavigationBarType.fixed,

          onTap: (index){
            setState(() {
              _currentIndex = index;
            });
          },

          items:<BottomNavigationBarItem> [
            BottomNavigationBarItem(
              icon: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(width: 25.w),
                  Icon(Icons.home_outlined, size: 22.sp),
                  SizedBox(width: 5.w),
                  if(_currentIndex==0) Text("Shop", style: TextStyle(fontSize: 11.sp,color: Colors.lightBlue)),
                ],
              ),
              label: '',
            ),
            BottomNavigationBarItem(
                icon: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(CupertinoIcons.search),
                    SizedBox(width: 5.w,),
                    if(_currentIndex==1) Text("Search", style: TextStyle(fontSize: 11.sp,color: Colors.lightBlue)),
                  ],
                ),
                label: ''
            ),
            BottomNavigationBarItem(
                icon: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(CupertinoIcons.cart),
                    SizedBox(width: 5.w),
                    if(_currentIndex==2) Text("Cart", style: TextStyle(fontSize: 11.sp,color: Colors.lightBlue)),
                  ],
                ),
                label: ''
            ),
            BottomNavigationBarItem(
                icon: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(CupertinoIcons.person),
                    SizedBox(width: 5.w),
                    if(_currentIndex==3) Text("Profile", style: TextStyle(fontSize: 11.sp, color: Colors.lightBlue)) ,
                    SizedBox(width: 25.w),
                  ],
                ),
                label: ''
            ),
          ],
        ),
      ),
    );
  }
}