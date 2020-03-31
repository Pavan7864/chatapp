class FriendModel{

  final String name;
  final String email;
  final String phone;
  final String image;
  final String lastMessage;

  FriendModel({this.name,this.email,this.phone,this.image,this.lastMessage});

  factory FriendModel.toJSON(Map<String, dynamic> map){
    return FriendModel();
  }


}