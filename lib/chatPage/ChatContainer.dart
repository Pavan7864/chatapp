import 'package:chatapp/localizations/Translations.dart';
import 'package:chatapp/page/ChatView.dart';
import 'package:chatapp/page/GroupChatView.dart';
import 'package:chatapp/utils/app_color.dart';
import 'package:flutter/material.dart';

class ChatContainer extends StatefulWidget{

  @override
  _ChatContainer createState()=>_ChatContainer();
}

class _ChatContainer extends State<ChatContainer> with SingleTickerProviderStateMixin {

  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(vsync: this, length: 2);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Column(
         children: <Widget>[
            Container(
              color: white,
              child: TabBar(
                  controller: _controller,
                  tabs: <Widget>[
                      Container(
                          padding: const EdgeInsets.only(top: 10,bottom: 10),
                          child: Text(Translations.of(context).message,style: TextStyle(color: black,fontSize: 16,fontWeight: FontWeight.w500),)),
                      Text(Translations.of(context).groups,style: TextStyle(color: black,fontSize: 16,fontWeight: FontWeight.w500),)
              ]),
            ),
            Expanded(child: TabBarView(
              controller: _controller,
              children: <Widget>[
                ChatView(),
                GroupChatView()
              ],
            ))
         ],
       ),
    );
  }
}