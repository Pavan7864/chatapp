import 'dart:async';
import 'package:http/http.dart' show Client;

class AppUtils{
   static String BASE_URL="";
   static String API_URL="$BASE_URL/api";

   static String friendsList='${API_URL}/my_friends';


   static Future<String> get(String url,{String body}) async {
     String response;
     if(body!=null && body.length>0){
       url=url+body;
     }
     try{
       Client client = Client();
        var request = await client.get(url);
       if (request.statusCode == 200) {
          response = request.body.toString();
       }

     }catch(_){

     }

     return response;
   }
}