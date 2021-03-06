import 'package:flutter/material.dart';


class YellowLounge extends StatefulWidget {
  @override
  _YellowLoungeState createState() => _YellowLoungeState();
}

class _YellowLoungeState extends State<YellowLounge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10.0,
        backgroundColor: Colors.deepOrange,
        title: Text('Yellow Lounge'),
      ),
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          InkWell(
            child: Container(
              height: 200.0,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,
                  image: DecorationImage(
                      image: new AssetImage("assets/13.jpg"),
                      fit: BoxFit.fill)),
            ),
          ),
          Text(
            "Yellow Lounge",
            style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 40,
            ),
          ),
          Text(
            "The Yellow Lounge is a large, comfortable lounge in the ground floor of the club. It is decorated with plush sofas and a warm ambience. Perfect for medium gatherings like office gettogethers, birthday parties etc \n \nCapacity : 25 people",
            style: TextStyle(
                fontSize: 20
            ),
          ),
          SizedBox(
              width: double.infinity,
              height: 60,
              child: ButtonTheme(
                child: RaisedButton(
                    color: Colors.deepOrange,
                    onPressed: () {
                      Navigator.pushNamed(context, "/bookingcalendar");
                    },
                    child: Text('Book',
                        style: TextStyle(color: Colors.white, fontSize: 18))),
              )),
        ],
      ),
    );
  }
}
