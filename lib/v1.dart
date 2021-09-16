import 'package:flutter/material.dart';

//laweight
class HomePageV1 extends StatelessWidget {
  const HomePageV1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: GlobalKey<ScaffoldState>(),
        body: Column(
          children: [
            Text("tester"),
            Expanded(
              child: Container(
                color: Colors.green,
              ),
            ),
            Text("tester"),
          ],
        ),
      ),
    );
  }
}