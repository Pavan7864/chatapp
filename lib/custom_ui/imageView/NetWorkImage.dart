import 'package:flutter/material.dart';


class NetWorkImage extends StatelessWidget{
  NetWorkImage(this.url,this.placeHolder,{this.mergin,this.padding,this.fit,this.height,this.weight});

  final String url;
  final String placeHolder;
  BoxFit fit = BoxFit.none;
  EdgeInsets mergin=EdgeInsets.all(0);
  EdgeInsets padding=EdgeInsets.all(0);

  double height=0;
  double weight=0;
  Image image;
  @override
  Widget build(BuildContext context) {
    if(image != '') {
      try {
        NetWorkImage image = new NetWorkImage(url,placeHolder);
        return Container(child: image,margin: mergin,padding: padding,);
      } catch (e) {
        AssetImage assetImage = AssetImage(placeHolder);
        image = Image(image: assetImage, width: weight,
            fit: fit,
            height: height);
      }
      return Container(child: image,margin: mergin,padding: padding,);
    }else{
      AssetImage assetImage = AssetImage(placeHolder);
     image = Image(image: assetImage, width: weight,
          fit: fit,
          height: height);
      return Container(child: image,margin: mergin,padding: padding,);
    }

  }

}