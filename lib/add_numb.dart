import 'package:flutter/material.dart';
import 'package:fypproject/verify_code.dart';

class AddNumb extends StatefulWidget {
  @override
  _AddNumbState createState() => _AddNumbState();
}

class _AddNumbState extends State<AddNumb> {
  @override
  Widget build(BuildContext context) {
    final formKey = new GlobalKey<FormState>();
    return new Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: new AppBar(
        title: new Text(
          "Phone Verification",
          style: new TextStyle(
            color: Colors.white,
            fontFamily: 'Georgia',
          ),
        ),
        backgroundColor: Colors.green,
      ),
      body: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
                padding: EdgeInsets.only(left: 25.0, right: 25.0),
                child: TextFormField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(hintText: 'Enter phone Number'),
                  // onChanged: (val) {
                  //   setState(() {
                  //     this.phoneNo = val;
                  //   });
                  // },
                )),
            Container(),
            Padding(
                padding: EdgeInsets.only(left: 40.0, right: 40.0),
                child: RaisedButton(
                    child: Center(
                      child: Text(
                        'VERIFY',
                        style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat'),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => VerifyCode()));
                    }))
          ],
        ),
      ),
    );
  }
}
