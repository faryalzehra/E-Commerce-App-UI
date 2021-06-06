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

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
                margin: EdgeInsets.only(right: 10, left: 10),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTileWidget(urlStr: aURL, title: 'Iphone 12')),
            SizedBox(
              height: 10,
            ),
            Container(
                margin: EdgeInsets.only(right: 10, left: 10),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTileWidget(urlStr: bURL, title: 'Note 20 Ultra')),
            SizedBox(
              height: 10,
            ),
            Container(
                margin: EdgeInsets.only(right: 10, left: 10),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTileWidget(urlStr: cURL, title: 'Macbook Air')),
            SizedBox(
              height: 10,
            ),
            Container(
                margin: EdgeInsets.only(right: 10, left: 10),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTileWidget(urlStr: dURL, title: 'Macbook Pro')),
            SizedBox(
              height: 10,
            ),
            Container(
                margin: EdgeInsets.only(right: 10, left: 10),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTileWidget(urlStr: eURL, title: 'Gaming PC')),
            SizedBox(
              height: 10,
            ),
            Container(
                margin: EdgeInsets.only(right: 10, left: 10),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTileWidget(urlStr: fURL, title: 'Backlit Keyboard')),
            SizedBox(
              height: 8,
            ),
            Container(
                margin: EdgeInsets.only(right: 10, left: 10),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTileWidget(urlStr: gURL, title: 'Mercedes')),
            SizedBox(
              height: 10,
            ),
            Container(
                margin: EdgeInsets.only(right: 10, left: 10),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTileWidget(urlStr: hURL, title: 'Mutton')),
            SizedBox(
              height: 10,
            ),
            Container(
                margin: EdgeInsets.only(right: 10, left: 10),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTileWidget(urlStr: iURL, title: 'Roadster')),
            SizedBox(
              height: 10,
            ),
            Container(
                margin: EdgeInsets.only(right: 10, left: 10),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTileWidget(urlStr: jURL, title: 'Royal Field')),
          ],
        ),
      ),
    );
  }
}

class ListTileWidget extends StatelessWidget {
  final String urlStr;
  final String title;
  ListTileWidget({Key key, this.urlStr, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ConstrainedBox(
        constraints: BoxConstraints(
          minWidth: 100,
          minHeight: 200,
          maxWidth: 400,
          maxHeight: 600,
        ),
        child: Image.asset(
          urlStr,
          fit: BoxFit.fill,
        ),
      ),
      title: Container(
        child: Text(
          title,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 17,
          ),
        ),
      ),
      subtitle: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 4,
          ),
          Container(
            child: Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 16,
                ),
                Text(
                  "5.0 (23 Reviews)",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Container(
            child: Row(
              children: [
                Text(
                  "21 Pieces",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "\$90",
                  style: TextStyle(
                    color: Colors.purple,
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Container(
            child: Text(
              "Quantity: 1",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
