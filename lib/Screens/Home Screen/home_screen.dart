import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sticky_headers/sticky_headers.dart';
import 'package:twitter/My%20Widgets/My%20Custom%20%20Space%20Container/my_custom_space_container.dart';
import 'package:twitter/My%20Widgets/My%20Custom%20Card/my_custom_card.dart';
import 'package:twitter/My%20Widgets/My%20Custom%20Drawer/my_custom_drawer.dart';
import '../../App Config/App Theme/app_theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
          label: ''
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
              label: ''
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mic),
              label: ''
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
              label: ''
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.mail),
              label: ''
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: FaIcon(FontAwesomeIcons.add),
      ),
      drawer: Drawer(
      child:MyDrawer()

      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Padding(
              padding: EdgeInsets.all(12),
              child: FaIcon(
                FontAwesomeIcons.star,
                color: Colors.black38,
              ))
        ],
        leading: Transform.scale(
          scale: 0.6,
          child: GestureDetector(

            onTap: (){

              scaffoldKey.currentState?.openDrawer();


            },
            child: Container(
              child: Image.asset(
                'images/logo.png',
              ),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                shape: BoxShape.circle,
              ),
            ),
          ),
        ),
        title: FaIcon(
          FontAwesomeIcons.twitter,
          color: Colors.blue,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
                  SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  MySpaceCard(),
                  MySpaceCard(),
                  MySpaceCard(),
                  MySpaceCard(),
                  MySpaceCard(),

                ],
              ),
            ),
     MyCard(name: 'suleman awan',username: '@sulemanawan415',caption: 'Be a warrior not a worrier',
       comment: '20',like: '30',retweet: '10',profileimg:'images/logo.png' ,
       share: '1',time: '5h',img: 'images/logo.png',



     )

          ],
        ),
      ),
    );
  }
}
