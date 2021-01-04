import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {

  final  imgPath;
  final  foodName;
  final   foodprice;


  DetailPage({this.imgPath, this.foodName, this.foodprice});

  @override
  _DetailPageState createState() => _DetailPageState();

}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 300.0,

              ),
              Container(
                height: 200.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/mosaic.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(100.0),
                    bottomRight: Radius.circular(100.0),
                  ),
                ),
              ),
              Positioned(
                top: 50.0,
                left: (MediaQuery.of(context).size.width / 2) -125,
                child: Hero(tag: widget.imgPath,
                    child: Container(
                      height: 250.0,
                      width: 250.0,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(widget.imgPath),
                            fit: BoxFit.cover,
                          )
                      ),
                    )
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(icon: Icon(Icons.arrow_back_ios,
                  color: Colors.white,), onPressed: (){
                  Navigator.of(context).pop();
                }),
              ),
              Align(
                alignment: Alignment.topRight,
                child: IconButton(icon: Icon(Icons.more_horiz,
                  color: Colors.white,), onPressed: (){}),
              ),

            ],
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(widget.foodName,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5.0,),
                Row(
                  children: [
                    Text('4.9',style: TextStyle(
                      fontSize: 17.0,
                      color: Colors.grey,
                    ),
                    ),
                    SizedBox(width: 10.0,),
                    Icon(Icons.star,color: Colors.green,size: 16.0,),
                    Icon(Icons.star,color: Colors.green,size: 16.0,),
                    Icon(Icons.star,color: Colors.green,size: 16.0,),
                    Icon(Icons.star,color: Colors.green,size: 16.0,),
                    Icon(Icons.star,color: Colors.green,size: 16.0,),

                  ],
                ),
                SizedBox(height: 25.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(widget.foodprice,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(height: 40.0,
                      width: 125.0,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(icon: Icon(Icons.remove_circle_outline,color: Colors.white,), onPressed: (){}),
                          Text('3',style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                          ),
                          ),
                          IconButton(icon: Icon(Icons.add_circle,color: Colors.white,), onPressed: (){}),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0,),
                Text('About this food',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20.0,),
                Container(
                  child: Text(
                    'Used to position items on top of each other along the Z axis'
                        'You can position items in absolute space (i.e. in a coordinate space) via the Positioned() widget'
                        'You can position items in absolute space (i.e. in a coordinate space) via the Positioned() widget',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15.0,
                    ),
                  ),
                ),
                SizedBox(height: 15.0,),
                Container(
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20.0),

                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Total',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 10.0,),
                        Text('\$ 84.0',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
