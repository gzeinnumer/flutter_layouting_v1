import 'package:flutter/material.dart';

class HomePageV3 extends StatelessWidget {
  const HomePageV3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: GlobalKey<ScaffoldState>(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 300,
                child: ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text('$index data nih'),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}