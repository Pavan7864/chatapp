import 'package:chatapp/chatPage/ChatContainer.dart';
import 'package:chatapp/custom_ui/imageView/ImageViewSize.dart';
import 'package:chatapp/localizations/ScopeModelWrapper.dart';
import 'package:chatapp/localizations/TranslationsDelegate.dart';
import 'package:chatapp/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:scoped_model/scoped_model.dart';

class HomeView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider<HomeProvider>(
        create:(context)=> HomeProvider(),
        child:Scaffold(
          body: Column(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(top: 25,right: 10,left: 10),
                child: Row(
                  children: <Widget>[
                    ImageViewSize('images/logo.png', 80, 80),
                    Expanded(child: Container()),
                    Container(
                      child: IconButton(icon: Icon(Icons.search,size: 35,color: grey,), onPressed:  (){}),
                    )
                  ],
                ),
              ),

              Expanded(child: Container(
                child: Consumer<HomeProvider>(
                  builder: (context, model,child){

                    return model.selectedPage;
                  },
                ),
              ))

            ],
          ),
          bottomNavigationBar: Container(
            height: 60,
            decoration: BoxDecoration(

            ),
          ),
        ) ,

    );
  }
}



class HomeProvider extends ChangeNotifier{
   Widget selectedPage=ChatContainer();

   void change(Widget child){
     selectedPage=child;
      notifyListeners();
   }
}