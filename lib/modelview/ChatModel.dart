class ChatModel{

  final String name;
  final String email;
  final String phone;
  final String image;
  final String lastMessage;

  ChatModel({this.name,this.email,this.phone,this.image,this.lastMessage});

  factory ChatModel.toJSON(Map<String, dynamic> map){
    return ChatModel();
  }


}