import 'package:flutter/material.dart';
import 'package:fypproject/login_email.dart';
class SettingsPage extends StatefulWidget {
  @override
   SettingsPageState createState() =>  SettingsPageState();
}

class  SettingsPageState extends State <SettingsPage> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       backgroundColor: Theme.of(context).scaffoldBackgroundColor,
       elevation: 1,
       leading: IconButton(
         onPressed: (){
           Navigator.of(context).pop();
         },
         icon: Icon(
           Icons.arrow_back,
           color: Colors.black,
         ),
       ),
       title: Text("Account Profile",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),)
       ),
      body:SingleChildScrollView(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
            margin:  const EdgeInsets.all(8.0),
            color: Colors.blueGrey,
            child: ListTile(
              onTap: (){
                //go to profile edit
              },
              title: Text("Muhammad MBS",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),
              ),
              leading: CircleAvatar(
                backgroundImage:   new NetworkImage(
                                          "https://media.istockphoto.com/photos/portrait-of-smiling-handsome-man-in-blue-tshirt-standing-with-crossed-picture-id1045886560?k=6&m=1045886560&s=612x612&w=0&h=hXrxai1QKrfdqWdORI4TZ-M0ceCVakt4o6532vHaS3I="
                                          
                ),
              ),
                trailing:Icon(Icons.edit,color: Colors.white,)            
              ),
            ),
            const SizedBox(height:10.0),
            
        Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Column(
        children: <Widget>[
            ListTile(
              onTap: (){
                //go to profile edit
              },
              leading: Icon(Icons.flare_outlined,color: Colors.blueGrey),
              title: Text("Welcome",
              ),
                trailing:Icon(Icons.arrow_forward_ios_sharp,color: Colors.black,)            
              ),      
                Divider(
               height: 15,
               thickness: 2,
             ),
             SizedBox(
               height: 10,
               ),
     
        ListTile(
              onTap: (){
                //go to profile edit
              },
              leading: Icon(Icons.location_on,color: Colors.blueGrey),
              title: Text("Nursuries Location",
              ),
                trailing:Icon(Icons.arrow_forward_ios_sharp,color: Colors.black,)            
              ),
 
                Divider(
               height: 15,
               thickness: 2,
             ),
             SizedBox(
               height: 10,
               ),
            
        ListTile(
              onTap: (){
                //go to profile edit
              },
              leading: Icon(Icons.settings,color: Colors.blueGrey),
              title: Text("Settings",
              ),
                trailing:Icon(Icons.arrow_forward_ios_sharp,color: Colors.black,)            
              ),
            
                Divider(
               height: 15,
               thickness: 2,
             ),
             SizedBox(
               height: 10,
               ),
            
        ListTile(
              onTap: (){
                //go to profile edit
              },
              leading: Icon(Icons.history,color: Colors.blueGrey),
              title: Text("History",
              ),
                trailing:Icon(Icons.arrow_forward_ios_sharp,color: Colors.black,)            
              ),

              
                Divider(
               height: 15,
               thickness: 2,
             ),
             SizedBox(
               height: 10,
               ),
            
        ListTile(
              onTap: (){
                //go to profile edit
              },
              leading: Icon(Icons.feedback_outlined,color: Colors.blueGrey),
              title: Text("Feedback",
              ),
                trailing:Icon(Icons.arrow_forward_ios_sharp,color: Colors.black,)            
              ),

              
                Divider(
               height: 15,
               thickness: 2,
             ),
             SizedBox(
               height: 10,
               ),
            
        ListTile(
              onTap: (){
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => signIn()));
              },
              leading: Icon(Icons.logout,color: Colors.red),
              title: Text("Sign Out",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),
              ),),
 
 
        ],
        )  
        )




        ],
        ),
        )

  //          Row(
  //            children:[
  //                    Text(
  //                   "General Setting", 
  //                   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
  //                   )
    );
  }
}