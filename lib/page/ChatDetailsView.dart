import 'package:chatapp/localizations/ScopeModelWrapper.dart';
import 'package:chatapp/localizations/TranslationsDelegate.dart';
import 'package:chatapp/modelview/ChatModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:scoped_model/scoped_model.dart';

class ChatDetailsView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<AppModel>(builder: (context, child, model) {
      return MaterialApp(
        locale: model.appLocal,
        localizationsDelegates: [
          const TranslationsDelegate(),
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: [
          const Locale('ar', ''), // Arabic
          const Locale('en', ''), // English
        ],
        debugShowCheckedModeBanner: false,
        home: new _ChatDetailsView(),
      );
    });
  }
}
class _ChatDetailsView extends StatefulWidget{

     @override
     MainChatDetailsView createState()=>MainChatDetailsView();
}
class MainChatDetailsView extends State<_ChatDetailsView>{

    @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider<ChatResponseModel>(
      create:(context)=> ChatResponseModel(),
       child: Scaffold(),
    );
  }
}

class ChatResponseModel extends ChangeNotifier{
     List<ChatModel> message=[];
      sendMessage(String message){

      }
}

