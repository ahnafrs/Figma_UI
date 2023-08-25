import 'package:day23/screen/nav_bar/calender.dart';
import 'package:day23/screen/nav_bar/my_task.dart';
import 'package:day23/screen/nav_bar/profile.dart';
import 'package:day23/screen/nav_bar/project.dart';
import 'package:flutter/material.dart';

class BottomNavBarDemo extends StatefulWidget {
  const BottomNavBarDemo({super.key});

  @override
  State<BottomNavBarDemo> createState() => _BottomNavBarDemoState();
}

class _BottomNavBarDemoState extends State<BottomNavBarDemo> {
  int selectedItem = 2;
  PageController pageController = PageController(initialPage: 0);
  List<Widget> pages = [MyTask(), Calender(), Project(), Profile()];

  void onPageChange(int index) {
    setState(() {
      selectedItem = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          isExtended: false,
          backgroundColor: Colors.blueAccent,
          child: Icon(
            Icons.add,
            size: 30,
            color: Colors.white,
          ),
          shape: CircleBorder(),
          onPressed: () {}),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: PageView(
        controller: pageController,
        children: pages,
        onPageChanged: onPageChange,
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black45,
        padding: EdgeInsets.only(bottom: 8, top: 8),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            MaterialButton(
              onPressed: () {
                setState(() {
                  selectedItem = 0;
                  pageController!.jumpToPage(0);
                });
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.task,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    "My Task",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
            MaterialButton(
              onPressed: () {
                setState(() {
                  selectedItem = 1;
                  pageController!.jumpToPage(1);
                });
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.calendar_month,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    "Calender",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
            MaterialButton(
              onPressed: () {
                setState(() {
                  selectedItem = 2;
                  pageController!.jumpToPage(2);
                });
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.work,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    "Project",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
            MaterialButton(
              onPressed: () {
                setState(() {
                  selectedItem = 3;
                  pageController!.jumpToPage(3);
                });
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.people,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    "Profile",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
