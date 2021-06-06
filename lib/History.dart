import 'package:flutter/material.dart';

String aURL = 'assets/a.jpg';
String bURL = 'assets/b.jpg';
String cURL = 'assets/c.jpg';
String dURL = 'assets/d.jpg';
String eURL = 'assets/e.jpg';
String fURL = 'assets/f.jpg';
String gURL = 'assets/g.jpg';
String hURL = 'assets/h.jpg';
String iURL = 'assets/i.jpg';
String jURL = 'assets/j.jpg';

class History extends StatelessWidget {
  const History({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Ecom App UI",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.notifications,
            ),
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(
                left: 25,
                right: 25,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(5.0, 15.0, 35.0, 15.0),
                    border: InputBorder.none,
                    hintText: 'Username',
                    icon: Icon(
                      Icons.search,
                    ),
                  ),
                  keyboardType: TextInputType.name),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Text("History"),
              margin: EdgeInsets.only(left: 25),
            ),
            LastTileWidget(urlStr: aURL, title: 'Iphone 12'),
            LastTileWidget(urlStr: bURL, title: 'Note 20 Ultra'),
            LastTileWidget(urlStr: dURL, title: 'Macbook Pro'),
            LastTileWidget(urlStr: eURL, title: 'Gaming PC'),
            LastTileWidget(urlStr: fURL, title: 'Backlit Keyboard'),
            LastTileWidget(urlStr: gURL, title: 'Mercedes'),
            LastTileWidget(urlStr: hURL, title: 'Mutton'),
            LastTileWidget(urlStr: iURL, title: 'Roadster'),
            LastTileWidget(urlStr: jURL, title: 'Royal Field'),
          ],
        ),
      ),
    );
  }
}

class LastTileWidget extends StatelessWidget {
  final String urlStr;
  final String title;
  LastTileWidget({Key key, this.urlStr, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      visualDensity: VisualDensity(horizontal: 0, vertical: -4),
      leading: CircleAvatar(
        backgroundImage: AssetImage(urlStr),
        radius: 20,
      ),
      title: Text(
        title,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 13,
        ),
      ),
      subtitle: Row(
        children: [
          Icon(
            Icons.star,
            color: Colors.yellow,
            size: 15,
          ),
          Text(
            "5.0 (23 Reviews)",
            style: TextStyle(
              fontSize: 15,
            ),
          ),
        ],
      ),
      trailing: Text("10\$"),
    );
  }
}
