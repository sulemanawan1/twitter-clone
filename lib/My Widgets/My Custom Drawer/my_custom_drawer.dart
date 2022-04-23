import 'package:flutter/material.dart';

import '../../App Config/App Theme/app_theme.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(

      // Important: Remove any padding from the ListView.
      padding: EdgeInsets.zero,
      children: [

        UserAccountsDrawerHeader(
          decoration:BoxDecoration(color: PrimaryColor),

          accountName: Text("Suleman Awan"),
          accountEmail: Text("sulemanawan415@gmail.com"),
          currentAccountPicture: CircleAvatar(

            foregroundColor: PrimaryColor,
            backgroundColor: SecondaryColor,
            child: Text(
              "S",
              style: TextStyle(fontSize: 40.0),
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.favorite_border_outlined,color: PrimaryColor,), title: Text("Favourites"),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: Icon(Icons.receipt_outlined,color: PrimaryColor,), title: Text("Orders"),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: Icon(Icons.person_outline_outlined,color: PrimaryColor,), title: Text("Profile"),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: Icon(Icons.favorite_border_outlined,color: PrimaryColor,), title: Text("Favourites"),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: Icon(Icons.location_on_outlined,color: PrimaryColor,), title: Text("Addresses"),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: Icon(Icons.emoji_events_outlined,color: PrimaryColor,), title: Text("Challenges & Rewards"),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: Icon(Icons.receipt_long_outlined,color: PrimaryColor,), title: Text("Vouchers"),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: Icon(Icons.help_center_outlined,color: PrimaryColor,), title: Text("Help Center"),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        Container(
            child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: Column(
                  children: <Widget>[
                    Divider(),
                    ListTile(

                        title: Text('Settings')),
                    ListTile(

                        title: Text('Terms & Conditions \ Privacy')),
                    ListTile(

                        title: Text('Logout'))
                  ],
                ))),
      ],
    );
  }
}
