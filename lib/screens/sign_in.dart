import 'package:flutter/material.dart';
import 'package:partial_gallery/mainScreen.dart';

class SignIn extends StatefulWidget {
  SignIn({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.75,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Color.fromRGBO(249, 70, 100, 1),
                  radius: 90,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 45, right: 50),
                    child: Text(
                      "P",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 130,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: "Your email"),
                  // validator: nameValidator,
                  // onSaved: (String value) => _id = value
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: "Password"),
                  // onSaved: (String value) => _userId = value,
                  // validator: nameValidator,
                ),
                SizedBox(
                  height: 50,
                ),
                ButtonTheme(
                  minWidth: 150,
                  height: 40,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        side: BorderSide(color: Colors.red)),
                    color: Colors.grey[100],
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MainScreen()));
                    },
                    child: Text("Log-in"),
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                ButtonTheme(
                  minWidth: 150,
                  height: 40,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        side: BorderSide(color: Colors.red)),
                    color: Colors.grey[100],
                    onPressed: () async {},
                    child: Text("Log-in Anon"),
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
