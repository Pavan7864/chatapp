import 'package:chatapp/adapter/ChatUserAdaptera.dart';
import 'package:chatapp/bloc/MyFriendBloc.dart';
import 'package:chatapp/custom_ui/imageView/CircleImageView.dart';
import 'package:chatapp/localizations/Translations.dart';
import 'package:chatapp/modelview/FriendModel.dart';
import 'package:chatapp/utils/app_color.dart';
import 'package:flutter/material.dart';

class GroupChatView extends StatefulWidget{

  @override
  _GroupChatView createState()=>_GroupChatView();
}
class _GroupChatView extends State<GroupChatView>{

    @override
  Widget build(BuildContext context) {
      friend.getMyFriend();
    return Scaffold(
      backgroundColor: white,
      body: StreamBuilder(
           stream: friend.friends,
          builder: (context,AsyncSnapshot<List<FriendModel>> list){

             return Container(
                child:    ListView.builder(
                    itemCount: 10,
                    padding: const EdgeInsets.all(0),
                    itemBuilder: (context,position){
                      return ChatUserAdapter();
                    }
                ),
             );
          }),
    );
  }
}
