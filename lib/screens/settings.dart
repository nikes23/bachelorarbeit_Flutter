import 'package:flutter/material.dart';
import 'package:bachelorarbeit/screens/below.dart';

class SettingsClass extends StatefulWidget {
  const SettingsClass({Key? key}) : super(key: key);

  @override
  _SettingsClassState createState() => _SettingsClassState();
}

class _SettingsClassState extends State<SettingsClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Settings"),
        backgroundColor: const Color(0xFF235A97),
      ),
      body: getListView(context),
    );
  }
}

Widget getListView(BuildContext context) {
  var listView = ListView(
    padding: const EdgeInsets.all(10),
    children: <Widget>[
      Card(
        //color: Theme.of(context).primaryColor,
        color: const Color(0xFF235A97),
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 8),
          child: ListTile(
            leading: const Icon(
              Icons.account_box_rounded,
              size: 30,
              color: Colors.white,
            ),
            title: const Text(
              "Account",
              style: TextStyle(color: Colors.white),
            ),
            //subtitle: Text("Beautiful View !"),
            trailing: const Icon(
              Icons.navigate_next,
              color: Colors.white,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const BelowClass(),
                ),
              );
            },
          ),
        ),
      ),
      Card(
        color: const Color(0xFF235A97),
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 8),
          child: ListTile(
            leading: const Icon(
              Icons.security,
              color: Colors.white,
              size: 30,
            ),
            title: const Text(
              "Privacy",
              style: TextStyle(color: Colors.white),
            ),
            //subtitle: Text("Beautiful View !"),
            trailing: const Icon(
              Icons.navigate_next,
              color: Colors.white,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const BelowClass(),
                ),
              );
            },
          ),
        ),
      ),
      Card(
        color: const Color(0xFF235A97),
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 8),
          child: ListTile(
            leading: const Icon(
              Icons.lock,
              color: Colors.white,
              size: 30,
            ),
            title: const Text(
              "Security",
              style: TextStyle(color: Colors.white),
            ),
            //subtitle: Text("Beautiful View !"),
            trailing: const Icon(
              Icons.navigate_next,
              color: Colors.white,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const BelowClass(),
                ),
              );
            },
          ),
        ),
      ),
      Card(
        color: const Color(0xFF235A97),
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 8),
          child: ListTile(
            leading: const Icon(
              Icons.color_lens,
              color: Colors.white,
              size: 30,
            ),
            title: const Text(
              "Design",
              style: TextStyle(color: Colors.white),
            ),
            //subtitle: Text("Beautiful View !"),
            trailing: const Icon(
              Icons.navigate_next,
              color: Colors.white,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const BelowClass(),
                ),
              );
            },
          ),
        ),
      ),
      Card(
        color: const Color(0xFF235A97),
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 8),
          child: ListTile(
            leading: const Icon(
              Icons.notifications_active,
              color: Colors.white,
              size: 30,
            ),
            title: const Text(
              "Sound & Notifications",
              style: TextStyle(color: Colors.white),
            ),
            //subtitle: Text("Beautiful View !"),
            trailing: const Icon(
              Icons.navigate_next,
              color: Colors.white,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const BelowClass(),
                ),
              );
            },
          ),
        ),
      ),
      Card(
        color: const Color(0xFF235A97),
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 8),
          child: ListTile(
            leading: const Icon(
              Icons.chat_bubble,
              color: Colors.white,
              size: 30,
            ),
            title: const Text(
              "Chat",
              style: TextStyle(color: Colors.white),
            ),
            //subtitle: Text("Beautiful View !"),
            trailing: const Icon(
              Icons.navigate_next,
              color: Colors.white,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const BelowClass(),
                ),
              );
            },
          ),
        ),
      ),
      Card(
        color: const Color(0xFF235A97),
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 8),
          child: ListTile(
            leading: const Icon(
              Icons.landscape,
              color: Colors.white,
              size: 30,
            ),
            title: const Text(
              "Media & Storage",
              style: TextStyle(color: Colors.white),
            ),
            //subtitle: Text("Beautiful View !"),
            trailing: const Icon(
              Icons.navigate_next,
              color: Colors.white,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const BelowClass(),
                ),
              );
            },
          ),
        ),
      ),
      Card(
        color: const Color(0xFF235A97),
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 8),
          child: ListTile(
            leading: const Icon(
              Icons.bug_report,
              color: Colors.white,
              size: 30,
            ),
            title: const Text(
              "Bug Fixing",
              style: TextStyle(color: Colors.white),
            ),
            //subtitle: Text("Beautiful View !"),
            trailing: const Icon(
              Icons.navigate_next,
              color: Colors.white,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const BelowClass(),
                ),
              );
            },
          ),
        ),
      ),
      Card(
        color: const Color(0xFF235A97),
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.only(
              top: 0.0, right: 8.0, left: 10.0, bottom: 0.0),
          child: ListTile(
            leading: const Icon(
              Icons.info,
              color: Colors.white,
              size: 25,
            ),
            title: const Text(
              "About",
              style: TextStyle(color: Colors.white),
            ),
            //subtitle: Text("Beautiful View !"),
            trailing: const Icon(
              Icons.navigate_next,
              color: Colors.white,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const BelowClass(),
                ),
              );
            },
          ),
        ),
      ),
    ],
  );

  return listView;
}

class CustomListTile extends StatefulWidget {
  IconData icon;
  double iconSize;
  String text;
  Function onTap;

  CustomListTile(this.icon, this.iconSize, this.text, this.onTap, {Key? key})
      : super(key: key);

  @override
  State<CustomListTile> createState() => _CustomListTileState();
}

class _CustomListTileState extends State<CustomListTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
      child: Container(
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey.shade400))),
        child: InkWell(
          splashColor: const Color(0xFF2F2F2F),
          onTap: widget.onTap(),
          child: SizedBox(
            height: 50,
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 15, top: 0, right: 5, bottom: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(
                        widget.icon,
                        color: Colors.white,
                        size: widget.iconSize,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 25, top: 8, right: 8, bottom: 8),
                        child: Text(
                          widget.text,
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomListTileAsset extends StatefulWidget {
  AssetImage icon;
  double iconSize;
  String text;
  Function onTap;

  CustomListTileAsset(this.icon, this.iconSize, this.text, this.onTap,
      {Key? key})
      : super(key: key);

  @override
  State<CustomListTileAsset> createState() => _CustomListTileAssetState();
}

class _CustomListTileAssetState extends State<CustomListTileAsset> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
      child: Container(
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey.shade400))),
        child: InkWell(
          splashColor: const Color(0xFF2F2F2F),
          onTap: widget.onTap(),
          child: SizedBox(
            height: 50,
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 15, top: 0, right: 5, bottom: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      ImageIcon(
                        widget.icon,
                        color: Colors.white,
                        size: widget.iconSize,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 25, top: 8, right: 8, bottom: 8),
                        child: Text(
                          widget.text,
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
