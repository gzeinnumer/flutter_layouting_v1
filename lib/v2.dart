import 'package:flutter/material.dart';

//scroll ke bawah
class HomePageV2 extends StatelessWidget {
  const HomePageV2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: GlobalKey<ScaffoldState>(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Text("tester"),
              Container(
                height: 300,
                color: Colors.green,
              ),
              Text("coba"),
              Container(
                height: 700,
                color: Colors.grey,
              ),
              Text("Horizontal ScrollView"),
              Container(
                height: 300,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      width: 300,
                      color: Colors.black,
                    ),
                    Container(
                      width: 300,
                      color: Colors.red,
                    ),
                    Container(
                      width: 300,
                      color: Colors.blue,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}