import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(
          Icons.dashboard,
          color: Colors.red,
        ),
        actions: <Widget>[
          Icon(
            Icons.shopping_basket,
            color: Colors.red,
          ).pOnly(right: 16) // padding 16 horizantaly
          // ,
        ],
      ),
      body: Column(
        children: <Widget>[

          20.heightBox,
          Heading().px16(),
          20.heightBox,
          MainCategory(),
          20.heightBox,
          VxBox(
            child: Product(),
          ).white.py16.make()

          // Image.asset("assets/images/pink.png").box.pink500.rounded.width(context.isMobile ? 100 : 300).make()
        ],
      )

          .scrollVertical(), //ScrollVerical is same as SingleChild Scroll View.
    );
  }
}

class Heading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return "Discover Our Fresh Fruit IceCreams"
        .text
        .xl3
        .size(context.isMobile ? 15 : 20)
        .white
        .bold
        .make();
  }
}

class MainCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: (200),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          VxBox(
            child: Column(
              children: <Widget>[
                10.heightBox,

                Image.asset("assets/images/orange.png", height: context.isLandscape? 100:70),
                "Orange".text.bold.red700.size(context.isLandscape ? 25 : 20).make().centered()
              ],
            )
          ).height(context.isLandscape? 150:120).roundedSM.width(context.screenWidth*0.35).roundedLg.white.make().centered(),
          VxBox(
              child: Column(
                children: <Widget>[
                  10.heightBox,

                  Image.asset("assets/images/kiwi.png", height: context.isLandscape? 100:70),
                  "Kiwi".text.bold.red700.size(context.isLandscape ? 25 : 20).make().centered()
                ],
              )
          ).height(context.isLandscape? 150:120).roundedSM.width(context.screenWidth*0.35).roundedLg.white.make().centered().px16(),
          VxBox(
              child: Column(
                children: <Widget>[
                  10.heightBox,

                  Image.asset("assets/images/melon.png",  height: context.isLandscape? 100:70),
                  "Melon".text.bold.red700.size(context.isLandscape ? 25 : 20).make()
                ],
              )
          ).height(context.isLandscape? 150:120).roundedSM.width(context.screenWidth*0.35).roundedLg.white.make().centered(),


        ],
      ),
    );
  }
}
class Product extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      children: <Widget>[

        VxBox(

          child: Row(crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[

              Image.asset("assets/images/pink.png",scale: 10,).pOnly(left: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  "Strawberry".text.size(context.isLandscape ? 30 : 22).make(),
                  "high quality".text.size(context.isLandscape ? 25 : 20).red300.make(),
                  "\$ ${"4"}".text.size(context.isLandscape ? 25 : 20).bold.make()
                ],
              ),
              Container(
                height: context.isLandscape? 90:70,
                width: 80,
                child: Icon(Icons.shopping_basket,color: Colors.white,),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(topLeft:Radius.circular(30),bottomLeft:Radius.circular(30),)
                ),
              ),
            ],
          )
        ).height(120).width(300).white.make().py32(),
        VxBox(

            child: Row(crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[

                Image.asset("assets/images/purple.png",scale: 10,).pOnly(left: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    "purple Candy".text.size(context.isLandscape ? 30 : 22).make(),
                    "high quality".text.size(context.isLandscape ? 25 : 20).red300.make(),
                    "\$ ${"4"}".text.size(context.isLandscape ? 25 : 20).bold.make()
                  ],
                ),
                Container(
                  height: context.isLandscape? 90:70,
                  width: 80,
                  child: Icon(Icons.shopping_basket,color: Colors.white,),
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.only(topLeft:Radius.circular(30),bottomLeft:Radius.circular(30),)
                  ),
                ),
              ],
            )
        ).height(120).width(300).white.make().py32(),
        VxBox(

            child: Row(crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[

                Image.asset("assets/images/mint.png",scale: 10,).pOnly(left: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    "Mint lady".text.size(context.isLandscape ? 30 : 22).make(),
                    "high quality".text.size(context.isLandscape ? 25 : 20).red300.make(),
                    "\$ ${"4"}".text.size(context.isLandscape ? 25 : 20).bold.make()
                  ],
                ),
                Container(
                  height: context.isLandscape? 90:70,
                  width: 80,
                  child: Icon(Icons.shopping_basket,color: Colors.white,),
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.only(topLeft:Radius.circular(30),bottomLeft:Radius.circular(30),)
                  ),
                ),
              ],
            )
        ).height(120).width(300).white.make().py32()

      ],

    );
  }
}

