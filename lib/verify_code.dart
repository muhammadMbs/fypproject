import 'package:flutter/material.dart';
import 'package:fypproject/user_body.dart';

class VerifyCode extends StatefulWidget {
  @override
  _VerifyCodeState createState() => _VerifyCodeState();
}

class _VerifyCodeState extends State<VerifyCode> {
  String phoneNo;
  String smsCode;

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
                padding: EdgeInsets.only(left: 20.0, right: 150.0),
                child: TextFormField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(hintText: 'Enter OTP'),
                  // onChanged: (val) {
                  //   setState(() {
                  //     this.smsCode = val;
                  //   });
                  // },
                )),
            SizedBox(height: 20.0),
            Padding(
                padding: EdgeInsets.only(left: 40.0, right: 40.0),
                child: RaisedButton(
                    child: Center(
                      child: Text(
                        'VERIFY Code',
                        style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat'),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => UserWall()));
                    })),
            SizedBox(
              height: 5,
              width: 15.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't get Code? ",
                ),
                GestureDetector(
                  onTap: () {
                    //      Navigator.pushReplacement(context, MaterialPageRoute(
                    //        builder: (context)=>SignUp()
                    //  ));
                  },
                  child: Container(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Text("Resend Code",
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 16,
                              decoration: TextDecoration.underline))),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
