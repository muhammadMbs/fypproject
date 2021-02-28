import 'package:flutter/material.dart';
//import 'package:fypproject/Seller/addPost.dart';
import 'package:fypproject/login_phone.dart';
//import '../app_body.dart';
class SellerDashboard extends StatefulWidget {
  @override
  _SellerDashboardState createState() => _SellerDashboardState();
}

class _SellerDashboardState extends State<SellerDashboard> {
   final topBar = new AppBar(
    backgroundColor: new Color.fromRGBO(49,87,110,1.0),
    centerTitle: true,
    elevation: 1.0,
    leading: new Icon(Icons.settings,color: Colors.white,),
    title: new Text(
      "Green Pakistan",
      style: new TextStyle(
        color: Colors.white,
        fontFamily: 'Aveny',
      ),
    ),
    actions: <Widget>[
      Padding(
          padding: const EdgeInsets.only(right: 12.0),
          child: new IconButton(
            icon: Icon(Icons.send,color: Colors.white,),
            onPressed: () {},
          )),
    ],
  );
  String value;
  Card makeDashboardsItem(String title, IconData icon) {
    return Card(
        elevation: 2.0,
        margin: new EdgeInsets.all(20.0),
        child: Container(
          decoration: BoxDecoration(color: Color.fromRGBO(220, 220, 220, 1.0)),
          child: new InkWell(
            onTap: () {
              if (title=='Sign Out')
              {
                  Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => LoginPhone()));
              }
              else if(title=='Add Post')
              {// Navigator.pushReplacement(
                 // context, MaterialPageRoute(builder: (context) => CameraConnect()));
              }

            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              verticalDirection: VerticalDirection.down,
              children: <Widget>[
                SizedBox(height: 40.0),
                Center(
                    child: Icon(
                  icon,
                  size: 40.0,
                  color: Colors.black,
                )),
                SizedBox(height: 20.0),
                new Center(
                  child: new Text(title,
                      style:
                          new TextStyle(fontSize: 18.0, color: Colors.black)),
                )
              ],
            ),
          ),
        ));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: topBar,
        body:  Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 2.0),
        child: GridView.count(
         crossAxisCount: 2,
          padding: EdgeInsets.all(3.0),
          children: <Widget>[
          
             Card(
            
              margin:  const EdgeInsets.all(0.0),
            color: Colors.blueGrey,
            child: ListTile(
              onTap: (){
                //go to profile edit
              },
              title: Text("MBS NURSURY",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
              ),
              leading: CircleAvatar(
                radius: 20,
                backgroundImage:   new NetworkImage(
                                          "https://media.istockphoto.com/photos/portrait-of-smiling-handsome-man-in-blue-tshirt-standing-with-crossed-picture-id1045886560?k=6&m=1045886560&s=612x612&w=0&h=hXrxai1QKrfdqWdORI4TZ-M0ceCVakt4o6532vHaS3I="
                                          
                ),
              ),),
            ),
        
            makeDashboardsItem("Views", Icons.view_agenda),
            makeDashboardsItem("Status", Icons.online_prediction_outlined),            
            makeDashboardsItem("Add Post", Icons.add_photo_alternate_outlined),
            makeDashboardsItem("Stock", Icons.store_mall_directory_outlined),
            makeDashboardsItem("FeedBack", Icons.mark_chat_read_sharp),
            makeDashboardsItem("Sign Out", Icons.logout,)
          
          ],
          ),
        
        ),      
          
              );  
    
  }
}