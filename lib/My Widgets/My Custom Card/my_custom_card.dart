import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyCard extends StatelessWidget {

  final String? img;
  final String? profileimg;
  final String? name;
  final String? username;
  final String? time;
  final String? caption;
  final String? comment;
  final String?  retweet;
  final String?  like;
  final String?  share;

MyCard({
  required this .profileimg,
  required this .img,
        required this.name ,
         required this.username,
        required this.time,
  required this.caption,
  required this.comment,
  required this.retweet,
  required this.like,
  required this.share,


});

  @override
  Widget build(BuildContext context) {
    return   Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
            child: Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage(
                            profileimg!,
                          ),
                          fit: BoxFit.fill)),
                ),SizedBox(width: 10,),
                Expanded( flex: 4,
                  child: Text(name!,style: TextStyle(fontWeight: FontWeight.bold,overflow: TextOverflow.ellipsis,),

                  ),
                ),SizedBox(width: 5,),
                Expanded(flex: 4,
                    child: Text(username!,style: TextStyle(color: Colors.grey),overflow: TextOverflow.ellipsis)),

                SizedBox(width: 5,),

                Expanded(
                  flex: 2,
                  child: Text(
                    time!,style: TextStyle(color: Colors.grey),overflow: TextOverflow.ellipsis,),
                ),
              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.fromLTRB(60, 0, 20, 0),
              child: Text(
     caption!)),
          Padding(
            padding: EdgeInsets.fromLTRB(60, 10, 20, 0),
            child: Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey),
                  image: DecorationImage(
                      image: AssetImage(img!),
                      fit: BoxFit.fill)),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FaIcon(
                  FontAwesomeIcons.comment,
                  size: 18,
                  color: Colors.grey,
                ),
                Text(comment!),
                FaIcon(
                  FontAwesomeIcons.retweet,
                  size: 18,
                  color: Colors.grey,
                ),
                Text(retweet!),
                FaIcon(
                  FontAwesomeIcons.heart,
                  size: 18,
                  color: Colors.grey,
                ),
                Text(like!),
                FaIcon(
                  FontAwesomeIcons.share,
                  color: Colors.grey,
                  size: 18,
                ),
                Text(share!),
              ],
            ),
          ),
        ],
      ),
    );


  }
}
