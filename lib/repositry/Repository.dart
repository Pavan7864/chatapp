import 'package:chatapp/modelview/FriendModel.dart';
import 'package:chatapp/provider/CommonProvider.dart';

class Repository{
   final provider=new CommonProvider();

  Future<List<FriendModel>> myFriends() => provider.getMyFriend();
}