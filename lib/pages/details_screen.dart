import 'package:flutter/material.dart';

import '../model/item.dart';
import '../shared/appbar.dart';
import '../shared/colors.dart';
class Details extends StatefulWidget {
  Item product;
  Details ({required this.product});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  //const Details({Key? key}) : super(key: key);
  bool isShowMore = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        actions: [
          ProductsAndPrice()

        ],
        backgroundColor: appbarGreen,
        title: Text("Details screen"),
      ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(widget.product.imgPath),
              SizedBox(
                height: 11,
              ),

            Text("\$ ${widget.product.price}", style: TextStyle(fontSize: 20) ,),
            SizedBox(height:11),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(

                 child: Padding(
                   padding: const EdgeInsets.all(4),
                   child: Text("New" , style: TextStyle(fontSize: 12),
                   ),

                 ),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 129, 129),
                    borderRadius: BorderRadius.circular(4),

                  ),
                ),


                Row(
                  children: [
                    Icon(Icons.star,
                    size: 15,
                      color: Color.fromARGB(255, 255, 191, 0),
                    ),
                    Icon(Icons.star,
                      size: 15,
                      color: Color.fromARGB(255, 255, 191, 0),
                    ),
                    Icon(Icons.star,
                      size: 15,
                      color: Color.fromARGB(255, 255, 191, 0),
                    ),
                    Icon(Icons.star,
                      size: 15,
                      color: Color.fromARGB(255, 255, 191, 0),
                    ),
                    Icon(Icons.star,
                      size: 15,
                      color: Color.fromARGB(255, 255, 191, 0),
                    ),
                  ],
                ),

                SizedBox(width: 77,),

                Row(
                  children: [
                    Icon(Icons.edit_location,
                      size: 16,
                      color: Color.fromARGB(186, 3, 65, 27),
                    ),


                      Text("Flower Shop",
                        style: TextStyle(fontSize: 14),
                      ),
                  ],

                ),



          ],
        ),

            SizedBox(height: 16,),
            Row(
              children: [

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Details:"
                    ,style: TextStyle(fontSize: 19),),
                ),

              ],
            ),

            SizedBox (  width: double.infinity, child: Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text(

                  "In addition to facilitating the reproduction of flowering plants, flowers have long been admired and used by humans "
                      "to bring beauty to the environment,and also objects of romance, ritual, esotericism,",
                textAlign: TextAlign.start,
                overflow: TextOverflow.fade,
                maxLines: isShowMore ? 3:null,
              ),


            )
            ),
            TextButton(onPressed: (){
             setState(() {
               isShowMore = !isShowMore;
             });
            },
                child: Text(

                    isShowMore? "Show more" : "show less "),
            )


          ],

    ),
      )
    );
  }
}


//