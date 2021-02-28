    import 'package:flutter/material.dart';

class AppList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    //var FontAwesomeIcons;
    var listView = new ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) => index == 0
          ? new SizedBox(
              height: deviceSize.height * 0.00,
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 16.0, 8.0, 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            new Container(
                              height: 60.0,
                              width: 40.0,
                              decoration: new BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: new DecorationImage(
                                      fit: BoxFit.fill,
                                      image: new NetworkImage(
                                          "https://scontent.fisb1-1.fna.fbcdn.net/v/t1.0-9/119194421_2816790331938040_8243269378381487529_o.jpg?_nc_cat=107&ccb=2&_nc_sid=09cbfe&_nc_eui2=AeGA1WQ_QZW-_Uwm9meVVAh1Dl9pOoHOExkOX2k6gc4TGVI8GLTiEufApaytwoivUZZGt4PEIUUD_uGEk-3SUvr8&_nc_ohc=5T9YvyPHyOQAX8TyK3M&_nc_ht=scontent.fisb1-1.fna&oh=a96fc37d5694c0730e4529acd859b471&oe=5FE4EFA8"))),
                            ),
                            new SizedBox(
                              width: 10.0,
                            ),
                            new Text(
                              "Its_mbs",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        new IconButton(
                            icon: Icon(Icons.more_vert), onPressed: null)
                      ],
                    ),
                  ),
                  //2nd row
                  Flexible(
                    fit: FlexFit.loose,
                    child: new Image.network(
                      "https://images.pexels.com/photos/736230/pexels-photo-736230.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                      height: 400,
                      fit: BoxFit.cover,
                    ),
                  ),
                  //3rd row
                  Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          new Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              new IconButton(
                                  icon: Icon(Icons.comment,
                                      color: Colors.green.shade400),
                                  onPressed: null),
                              new SizedBox(width: 16.0),
                              new IconButton(
                                  icon: Icon(Icons.bookmark,
                                      color: Colors.green.shade400),
                                  onPressed: null),
                              new SizedBox(width: 16.0),
                            ],
                          )
                        ],
                      ))
                ]),
    );
    return listView;
  }
}
