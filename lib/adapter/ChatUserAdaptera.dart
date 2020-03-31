import 'package:chatapp/custom_ui/imageView/CircleImageView.dart';
import 'package:chatapp/utils/app_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatUserAdapter extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Container(
      margin: const EdgeInsets.all(8),
      child: Row(
        children: <Widget>[
          CircleImageView(null,60,colors: drakBlue,mergin: const EdgeInsets.all(5),),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                    margin: const EdgeInsets.only(left: 10,top: 3),
                    child: Text('Friend/Group Name',style: TextStyle(color: black,fontSize: 18,fontWeight: FontWeight.w500),
                    )),
                Container(
                    margin: const EdgeInsets.only(left: 10,top: 3,bottom: 3),
                    child: Text('Last Message...',style: TextStyle(color: black,fontSize: 14,fontWeight: FontWeight.w300),
                    )),
              ],
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                Container(
                    margin: const EdgeInsets.only(left: 5,top: 3),
                    child: Text('Just Now',style: TextStyle(color: grey,fontSize: 12,fontWeight: FontWeight.w300),
                    )),
                Container(
                    margin: const EdgeInsets.only(left: 5,top: 5,bottom: 3),
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      color: yellow,
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text('1',style: TextStyle(color: white,fontSize: 12,fontWeight: FontWeight.w600),textAlign: TextAlign.center,),
                    )
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}