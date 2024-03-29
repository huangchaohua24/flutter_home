import 'package:flutter/material.dart';
import 'package:flutter_home/pages/home_page.dart';
import 'package:flutter_home/pages/my_page.dart';
import 'package:flutter_home/pages/search_page.dart';
import 'package:flutter_home/pages/travel_page.dart';

class TabNavigator extends StatefulWidget{
  @override
  _TabNavagatorState createState() => _TabNavagatorState();
}

class _TabNavagatorState extends State<TabNavigator>{
  final _defaultColor = Colors.grey;
  final _activeColor = Colors.blue;
  int _currentIndex = 0;
  final PageController _controller = PageController(
    initialPage: 0
  );
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: PageView(
        controller: _controller,
        children: <Widget>[
          HomePage(),
          SearchPage(),
          TravelPage(),
          MyPage()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index){
            _controller.jumpToPage(index);
            setState(() {
              _currentIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: _defaultColor,),
              activeIcon: Icon(Icons.home, color: _activeColor,),
              title: Text(
                '首页',
                style: TextStyle(
                  color: _currentIndex != 0 ? _defaultColor : _activeColor
                ),
              )
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search, color: _defaultColor,),
              activeIcon: Icon(Icons.search, color: _activeColor,),
              title: Text(
                '搜索',
                style: TextStyle(
                    color: _currentIndex != 1 ? _defaultColor : _activeColor
                ),
              )
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.search, color: _defaultColor,),
                activeIcon: Icon(Icons.search, color: _activeColor,),
                title: Text(
                  '铝箔',
                  style: TextStyle(
                      color: _currentIndex != 2 ? _defaultColor : _activeColor
                  ),
                )
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.search, color: _defaultColor,),
                activeIcon: Icon(Icons.search, color: _activeColor,),
                title: Text(
                  '我的',
                  style: TextStyle(
                      color: _currentIndex != 3 ? _defaultColor : _activeColor
                  ),
                )
            )
          ]
      ),
    );
  }

}