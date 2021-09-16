import 'package:flutter/material.dart';

//tab bisa scroll
class HomePageV6 extends StatefulWidget {
  const HomePageV6({Key? key}) : super(key: key);

  @override
  _HomePageV6State createState() => _HomePageV6State();
}

class _HomePageV6State extends State<HomePageV6>
    with TickerProviderStateMixin
{
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(vsync: this, length: 2, initialIndex: 0);

    return SafeArea(
      child: Scaffold(
        key: GlobalKey<ScaffoldState>(),
        body: Column(
          children: [
            Text("tester"),
            TabBar(
              // indicatorColor: Colors.red,
              labelColor: Colors.green,
              unselectedLabelColor: Colors.blue,
              tabs: [
                Tab(
                  text: "Menu 1",
                ),
                Tab(
                  text: "Menu 2",
                ),
              ],
              controller: _tabController,
              onTap: (i){
                setState(() {
                  selectedIndex = i;
                });
              },
            ),
            Expanded(
              child: IndexedStack(
                index: selectedIndex,
                children: [
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          height: 300,
                          color: Colors.blueAccent,
                          // child: Text("Tab 1.1"),
                        ),
                        Container(
                          height: 700,
                          color: Colors.grey,
                          // child: Text("Tab 1.2"),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    color: Colors.deepPurple,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Tab 2.1"),
                        Text("Tab 2.1"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Text("tester"),
          ],
        ),
      ),
    );
  }
}
