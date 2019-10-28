import 'package:flutter/material.dart';
import 'package:partial_gallery/mainScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Partial Gallery',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      body: Form(
        key: formKey,
        child: Center(
          child: Container(
            // color: Colors.grey,
            width: MediaQuery.of(context).size.width * 0.75,
            // height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Color.fromRGBO(249, 70, 100, 1),
                  radius: 90,
                ),
                SizedBox(
                  height: 100,
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: "Your email"),
                  validator: nameValidator,
                  // onSaved: (String value) => _id = value
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: "Password"),
                  // onSaved: (String value) => _userId = value,
                  validator: nameValidator,
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  width: 150,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MainScreen()));
                    },
                    child: Text("Log in"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

String nameValidator(String value) {
  if (value.isEmpty) {
    return "Cannot Be empty";
  }
  final n = num.tryParse(value);
  if (n == null) {
    return '$value is not a valid number';
  }

  return null;
}

String numberValidator(String value) {
  final n = num.tryParse(value);
  if (n == null) {
    return '$value is not a valid number';
  }

  return null;
}