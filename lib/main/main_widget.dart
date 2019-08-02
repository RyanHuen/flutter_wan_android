import 'package:flutter/material.dart';

import 'bean/main_entry.dart';

class MainWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _MainWidgetState();
  }
}

class _MainWidgetState extends State<MainWidget> {
  List<MainEntry> mMainTabDataSet = [
    MainEntry('首页', Icons.star_border, Icons.star),
    MainEntry('项目', Icons.folder_special, Icons.folder),
    MainEntry('体系', Icons.center_focus_strong, Icons.category),
    MainEntry('导航', Icons.navigate_next, Icons.navigate_before),
    MainEntry('项目分类', Icons.tab_unselected, Icons.tab),
    MainEntry('工具', Icons.settings, Icons.settings_applications),
  ];

  List<BottomNavigationBarItem> mMainTabList;

  int _curSelected = 0;

  @override
  void initState() {
    super.initState();
    initNaviItemList();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(backgroundColor: Colors.red[400]),
      home: Scaffold(
        body: Container(
          child: Row(
            children: <Widget>[
              Expanded(
                child: Center(
                  child: Text('Test'),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: mMainTabList,
          onTap: (int index) {
            print("index    $index");
            setState(() {
              _curSelected = index;
            });
          },
          currentIndex: _curSelected,
        ),
      ),
    );
  }

  void initNaviItemList() {
    if (mMainTabList == null) {
      mMainTabList = mMainTabDataSet.map((tab) {
        return BottomNavigationBarItem(
          icon: Icon(
            tab.normalIcon,
            color: Colors.redAccent,
          ),
          title: Text(
            tab.name,
            style: TextStyle(color: Colors.redAccent),
          ),
          activeIcon: Icon(
            tab.selectedIcon,
            color: Colors.redAccent,
          ),
        );
      }).toList();
    }
  }
}
