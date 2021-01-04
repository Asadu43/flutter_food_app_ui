import 'package:flutter/material.dart';
import 'package:flutter_fruits_app_ui/detailpage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: 20.0,),
          Padding(padding: EdgeInsets.only(left: 15.0,right: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(icon: Icon(Icons.menu,color: Colors.black,), onPressed: (){}),
              Container(
                height: 40.0,
                width: 40.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  image: DecorationImage(
                    image: AssetImage('images/muree.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          ),
          Padding(padding: EdgeInsets.only(left: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('GOOD',style: TextStyle(
                 fontSize: 50.0,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),),
              Text('MORNING',style: TextStyle(
                fontSize: 50.0,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),),
              SizedBox(height: 20.0,),
              Text('Popular Food',style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
              ),
            ],
          ),
          ),

          SizedBox(height: 20.0,),
          Container(
            height: 250,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                itemList('images/one.jpg', 'Breakfast', '\$ 84'),
                itemList('images/two.jpg', 'Special Breakfast', '\$ 84'),
              ],
            ),
          ),
          SizedBox(height: 15.0,),
          Padding(padding: EdgeInsets.only(left: 20.0),
          child: Text(
            'BEST FOOD',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 17.0,
              color: Colors.black,
            ),
          ),
          ),
          SizedBox(height: 15.0,),
          Padding(padding: EdgeInsets.only(left: 15.0,right: 15.0),
          child: Container(
            height: 200.0,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.white,Colors.green],
                end: Alignment.bottomRight,
                begin: Alignment.topLeft,
              ),
              borderRadius: BorderRadius.circular(15.0),
              image: DecorationImage(
                image: AssetImage('images/three.jpg'),
                fit: BoxFit.contain,
              ),
            ),
          ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 75.0,
         decoration: BoxDecoration(
           borderRadius: BorderRadius.only(
             topRight: Radius.circular(50.0),
             topLeft: Radius.circular(50.0),
           ),
           color: Colors.green,
         ),
        padding: EdgeInsets.only(left: 40.0,right: 40.0),
        child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.bookmark_border,color: Colors.white,size: 25.0,),
            Icon(Icons.shopping_basket_outlined,color: Colors.white,size: 25.0,),
            Icon(Icons.ad_units_outlined,color: Colors.white,size: 25.0,),
            Icon(Icons.person_outline,color: Colors.white,size: 25.0,),
          ],
        ),
      ),
    );
  }
  Widget itemList(String imgPath, String foodName, String price){
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) =>
            DetailPage(imgPath: imgPath, foodName: foodName, foodprice: price),));
      },
      child: Padding(padding: EdgeInsets.only(top: 10.0,bottom: 10.0,left: 20.0),
      child: Container(
        height: 250.0,
        width: 200.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              blurRadius: 6.0,
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 5.0,
            ),
          ]
        ),
        child: Stack(
          children: [
            Container(
              height: 175.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.white,Colors.green],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                ),
              ),
            ),
            Hero(tag: imgPath, child: Container(
              height: 175.0,
              decoration: BoxDecoration(
                 image: DecorationImage(
                   image: AssetImage(imgPath),
                   fit: BoxFit.contain,
                 ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                ),

              ),
            ),
            ),
            Positioned(
              top: 160.0,
              right: 20.0,
              child: Material(
                elevation: 2.0,
                borderRadius: BorderRadius.circular(15.0),
                child: Container(
                  height: 30.0,
                  width: 30.0,
                  child: Center(
                    child: Icon(Icons.favorite,color: Colors.red,size: 17.0,),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 190.0,
              left: 20.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(foodName,style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 14.0,
                  ),
                  ),
                  SizedBox(height: 3.0,),
                  Container(
                    width: 175.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text('4.9',style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                              fontSize: 12.0,
                            ),
                            ),
                            SizedBox(width: 3.0,),
                            Icon(Icons.star,color: Colors.green,size: 14.0,),
                            Icon(Icons.star,color: Colors.green,size: 14.0,),
                            Icon(Icons.star,color: Colors.green,size: 14.0,),
                            Icon(Icons.star,color: Colors.green,size: 14.0,),
                            Icon(Icons.star,color: Colors.green,size: 14.0,),
                          ],
                        ),
                        Text(price,style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 16.0,
                        ),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      ),
    );

  }
}


