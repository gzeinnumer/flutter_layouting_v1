import 'package:flutter/material.dart';


//container tampa width, hegih
class HomePageV5 extends StatefulWidget {
  const HomePageV5({Key? key}) : super(key: key);

  @override
  _HomePageV5State createState() => _HomePageV5State();
}

class _HomePageV5State extends State<HomePageV5>
    with SingleTickerProviderStateMixin
{
  late TabController _tabController;
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    // TabController _tabController = TabController(vsync: this, length: 2, initialIndex: 0);

    return SafeArea(
      child: Scaffold(
        key: GlobalKey<ScaffoldState>(),
        body: Column(
          children: [
            Text("tester"),
            TabBar(
              indicatorColor: Colors.red,
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
                  Container(
                    color: Colors.amber,
                  ),
                  Container(
                    color: Colors.deepPurple,
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
