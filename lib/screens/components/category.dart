import 'package:flutter/material.dart';
import 'package:shopp/constants.dart';


class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ['HandBag', 'Jewellery', 'Footwear', 'Dresses'];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top:20),
          child: SizedBox(
        
        height: 25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: 
          (context,index)=>buildCategory(index),
        ),
        ),
    );
    
  }

 Widget buildCategory(int index) {
    return GestureDetector(
      onTap: (){
        setState(() {
       selectedIndex= index;   
        });
      },
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal:20.0 ),
            child: Column(
              
              crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget> [
              Text(
                categories[index],
                style: TextStyle(fontWeight: FontWeight.bold,
                color:selectedIndex== index ? kTextColor: kTextLightColor,
                
                     ),
                   ),
                   Container(
                     margin: EdgeInsets.only(top:5),
                     height: 2,
                     width: 30,
                     color: selectedIndex == index ? Colors.black: Colors.transparent,
                   )
                 ],
              ),
      ),
    );
  }
}
