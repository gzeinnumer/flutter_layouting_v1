import 'package:flutter/material.dart';

class GetSetText extends StatefulWidget {
  const GetSetText({Key? key}) : super(key: key);

  @override
  _GetSetTextState createState() => _GetSetTextState();
}

class _GetSetTextState extends State<GetSetText> {
  late TextEditingController username;
  late TextEditingController password;

  @override
  void initState() {
    super.initState();

    username = TextEditingController();
    password = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: GlobalKey<ScaffoldState>(),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(controller: username),
              TextField(controller: password),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    final snackBar = SnackBar(
                      content: Text(username.text + "_" + password.text),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  });
                },
                child: Text("Login"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
