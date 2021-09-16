import 'package:flutter/material.dart';

//nested
class HomePageV4 extends StatelessWidget {
  const HomePageV4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: GlobalKey<ScaffoldState>(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 50,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text('$index data nih'),
                    );
                  },
                ),
              ),
              Text("data")
            ],
          ),
        ),
      ),
    );
  }
}