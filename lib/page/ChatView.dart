import 'package:chatapp/adapter/ChatUserAdaptera.dart';
import 'package:chatapp/bloc/MyFriendBloc.dart';
import 'package:chatapp/custom_ui/imageView/CircleImageView.dart';
import 'package:chatapp/localizations/Translations.dart';
import 'package:chatapp/modelview/FriendModel.dart';
import 'package:chatapp/utils/app_color.dart';
import 'package:flutter/material.dart';

class ChatView extends StatefulWidget{

  @override
  _ChatView createState()=>_ChatView();
}
class _ChatView extends State<ChatView>{

    @override
  Widget build(BuildContext context) {
      friend.getMyFriend();
    return Scaffold(
      backgroundColor: white,
      body: StreamBuilder(
           stream: friend.friends,
          builder: (context,AsyncSnapshot<List<FriendModel>> list){

             return Container(
                child: ListView(
                  padding: const EdgeInsets.all(0),
                  shrinkWrap: true,
                  children: <Widget>[
                       Container(
                           margin: const EdgeInsets.only(left: 10,top: 5,bottom: 5),
                           child: Text(Translations.of(context).active,style: TextStyle(color: black,fontSize: 16,fontWeight: FontWeight.w200),
                           )),

                    Container(
                      height: 70,
                      child: ListView.builder(
                          itemCount: 10,
                          padding: const EdgeInsets.all(0),
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context,position){
                            return Container(
                                width: 70,
                                height: 70,
                                child: CircleImageView(null,60,colors: drakBlue,mergin: const EdgeInsets.all(5),)
                            );
                          }
                      ),
                    ),

                   ListView.builder(
                        itemCount: 10,
                        padding: const EdgeInsets.all(0),
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context,position){
                          return ChatUserAdapter();
                        }
                    ),
                  ],
                ),
             );
          }),
    );
  }
}
