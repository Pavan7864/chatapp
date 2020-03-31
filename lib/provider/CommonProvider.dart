

import 'dart:convert';

import 'package:chatapp/modelview/FriendModel.dart';
import 'package:chatapp/utils/AppUtils.dart';

class CommonProvider{

  Future<List<FriendModel>> getMyFriend() async {
    String response=await  AppUtils.get(AppUtils.friendsList);
    List<FriendModel> data=[];
    if(response!=null){
      var js=json.decode(response);
      data =(js as List).map((e)=>FriendModel.toJSON(e)).toList();
    }

    return data;
  }

}