import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static final String id = 'home_page';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Cars', style:  TextStyle(fontSize: 25, color: Colors.red),),
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_none,color: Colors.red,)
          ),
          IconButton(
              icon: Icon(Icons.shopping_cart,color: Colors.red,)
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              // #categories
              Container(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    singleTab(true,'All'),
                    singleTab(false,'Red'),
                    singleTab(false,'Green'),
                    singleTab(false,'Yellow'),
                    singleTab(false,'Blue'),
                  ],
                ),
              ),

              SizedBox(height: 20,),

              // #makeItem
              makeItem('assets/images/im_car1.jpg'),
              makeItem('assets/images/im_car2.jpg'),
              makeItem('assets/images/im_car3.jpg'),
              makeItem('assets/images/im_car4.png'),
              makeItem('assets/images/im_car5.jpg'),
            ],
          ),
        ),
      ),
    );
  }

  Widget singleTab(bool type, String text) {
    return AspectRatio(
      aspectRatio: 2.2/1.3,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          color: type? Colors.red : Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(text,style: TextStyle(fontSize: type? 20:16),),
        ),
      ),
    );
  }

  Widget makeItem(String image) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      width: double.infinity,
      height: 220,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[400],
            blurRadius: 10,
            offset: Offset(0,10),
          ),
        ],
      ),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            colors: [
              Colors.black.withOpacity(0.9),
              Colors.black.withOpacity(0.6),
              Colors.black.withOpacity(0.3),
              Colors.black.withOpacity(0.2),
            ]
          ),
        ),
        child: Column(
          mainAxisAlignment:MainAxisAlignment.spaceBetween,
          crossAxisAlignment:CrossAxisAlignment.start,
          children:[
            //TEXT AND ICON
            Column(
              crossAxisAlignment:CrossAxisAlignment.start,
              children:[
                //PDP CAR ELECTRIC
                Row(
                  children:[
                    Text('PDP Car',style:TextStyle(color:Colors.white,fontSize:25,fontWeight:FontWeight.bold),),
                    SizedBox(width:10),
                    Text('Electric',style:TextStyle(color:Colors.red,fontSize:20,fontWeight:FontWeight.w600)),
                  ],
                ),
                SizedBox(height:8),
                //100$
                Text('100\$',style:TextStyle(color:Colors.white,fontSize:23,fontWeight:FontWeight.bold),),
              ],
            ),
            //HEART ICON
            Container(
              height:35,
              width:35,
              decoration:BoxDecoration(
                shape:BoxShape.circle,
                color:Colors.red,
              ),
              child:Center(
                child:Icon(Icons.favorite_border,color:Colors.white,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
