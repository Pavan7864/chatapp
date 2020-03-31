import 'package:chatapp/modelview/FriendModel.dart';
import 'package:chatapp/repositry/Repository.dart';
import 'package:rxdart/rxdart.dart';

class MyFriendBloc{
   final repository=new Repository();
   final friendFetch=PublishSubject<List<FriendModel>>();
   Observable<List<FriendModel>> get friends => friendFetch.stream;

   getMyFriend() async {
//     List<FriendModel> data=await repository.myFriends();
     List<FriendModel> arr=[];
     friendFetch.sink.add(arr);
   }

   dispose() {
     friendFetch.close();
   }
}
final friend = MyFriendBloc();