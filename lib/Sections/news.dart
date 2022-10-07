// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:todo_app/NEWS%20API/Model/categoryModel.dart';
import 'package:todo_app/NEWS%20API/data.dart';
import 'package:webview_flutter/webview_flutter.dart';

class News extends StatefulWidget {
  const News({super.key});

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
 List<CatergoryModel> categories = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    categories = getCategories();

  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         toolbarHeight:60,backgroundColor: Colors.white,
          title : Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[  
              Text("Fin",style: TextStyle(color: Colors.black,fontSize: 30),textAlign: TextAlign.center,),
              Text("News",style: TextStyle(color: Colors.blue,fontSize: 30),textAlign: TextAlign.center,)
            ],
          ),
          elevation: 0.0,
         ),
          body: Container(
            child:  Column(
              children:<Widget> [
                Container(
                   padding: EdgeInsets.symmetric(horizontal: 16),
                  height: 100,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      return CategoryTile(
                        imageUrl: categories[index].imageUrl,
                        categoryName: categories[index].categoryName,
                      );
                    }),
                )
              ],
            ),
          ),


    );
  }
}
class CategoryTile extends StatelessWidget {
 
   final imageUrl, categoryName;
  const CategoryTile({super.key, this.imageUrl, this.categoryName});  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        
      },
      child: Container(
        margin: EdgeInsets.only(right: 16),
        child: Stack(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(imageUrl,width: 120,height: 70,fit: BoxFit.cover,)),
            Container(   
              alignment: Alignment.center, 
              width: 120,height: 70,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
              color: Colors.black26,),
              
              child: Text(
                categoryName,style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w500
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
class BlogTile extends StatelessWidget {

  final String imageUrl , title , desc ;
  BlogTile({required this.imageUrl , required this.title , required this.desc});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.network(imageUrl),
          Text(title),
          Text(desc)
        ],
      ),
    );
  }
}