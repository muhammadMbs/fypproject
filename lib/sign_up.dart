import 'package:flutter/material.dart';
import 'package:fypproject/services/auth.dart';
import 'package:fypproject/services/wrapper.dart';
import 'package:fypproject/shared/loading.dart';


final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
final TextEditingController _emailController = TextEditingController();
final TextEditingController _passwordController = TextEditingController();
final TextEditingController _userController = TextEditingController();

bool _success;
String _userEmail;
//var _auth;

class SignUp extends StatefulWidget {
  final Function toggleView;
  SignUp({this.toggleView});
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  @override

  // void dispose() {
  //   _emailController.dispose();
  //   _passwordController.dispose();
  //   super.dispose();
  // }

  // void _register() async {
  //   // ignore: deprecated_member_use
  //   final FirebaseUser user = (await _auth.createUserWithEmailAndPassword(
  //     email: _emailController.text,
  //     password: _passwordController.text,
  //   ))
  //       .user;
  //   if (user != null) {
  //     setState(() {
  //       _success = true;
  //       _userEmail = user.email;
  //     });
  //   } else {
  //     setState(() {
  //       _success = true;
  //     });
  //   }
  // }

  final authenticate _auth =
  authenticate(); //to access the auth.dart file class authenticate in it, we have to make an instance
  final _formKey = GlobalKey<FormState>(); //global key
  String email = '';
  String password = '';
  String error = '';
  bool loading = false;
  @override

  Widget build(BuildContext context) {
    wrapper();

    return loading
        ? Loading()
        : Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text('ok, lets Register'),
          elevation: 0.0,
          actions: <Widget>[
            FlatButton.icon(
              icon: Icon(Icons.person),
              label: Text('Sign in'),
              onPressed: () {
                widget.toggleView();
              },
            )
          ]),
      body: Container(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
          child: Form(
            key: _formKey, //pass the global key
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 30.0,
                ),
                TextFormField(
                  decoration:InputDecoration(hintText:'Email'),
                  validator: (value) => value.isEmpty
                      ? 'Enter the correct email'
                      : null, //the written in the form is valid or not
                  onChanged: (value) {
                    setState(() {
                      email = value;
                    });
                  },
                ),
                SizedBox(
                  height: 30.0,
                ),
                TextFormField(
                  decoration:
                  InputDecoration(hintText: 'Password'),
                  validator: (value) => value.length < 8
                      ? 'You enter an incorrect Password'
                      : null, //Password should be 8 or greater than 8 characters
                  obscureText: true,
                  onChanged: (value) {
                    setState(() {
                      password = value;
                    });
                  },
                ),
                SizedBox(
                  height: 30.0,
                ),
                RaisedButton(
                    color: Colors.amber,
                    child: Text(
                      'register',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () async {
                      if (_formKey.currentState
                          .validate()) //Evalute if it is true or false
                          {

                        dynamic result =
                        await _auth.registerWithEmailAndPassword(
                            email, password);
                        print("Domeeeeeeeeeeeeeeeeeeeeeeee");
                        print(result);

                         if (result == null) {
                          setState(() {
                            error =
                            'Please gave the valid Email or password';

                            //loading = false ..like that then always remains in loop
                          });
                          print("Data loaddddd hogayay");

                          //print(email);
                          //print(password);
                        }
                      }
                    }),

                SizedBox(
                  height: 20.0,
                ),

                //Print the error message
                Text(error,
                    style: TextStyle(fontSize: 20.0, color: Colors.red)),

                //
              ],
            ),
          )),
    );
  }
}
