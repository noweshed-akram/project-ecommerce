import 'package:flutter/material.dart';
import 'package:ecommerce/pages/product_details.dart';

class Products extends StatefulWidget{
  @override
  _ProductState createState()=> _ProductState();
}

class _ProductState extends State<Products>{

  var product_list = [
    {
      "name" : "Blazer",
      "picture" : "images/products/blazer1.jpeg",
      "old_price" : 120,
      "price" : 80,
    },
    {
      "name" : "Blazer",
      "picture" : "images/products/blazer2.jpeg",
      "old_price" : 120,
      "price" : 80,
    },
    {
      "name" : "Blazer",
      "picture" : "images/products/dress1.jpeg",
      "old_price" : 120,
      "price" : 80,
    },
    {
      "name" : "Blazer",
      "picture" : "images/products/dress2.jpeg",
      "old_price" : 120,
      "price" : 80,
    },
    {
      "name" : "Blazer",
      "picture" : "images/products/hills1.jpeg",
      "old_price" : 120,
      "price" : 80,
    },
    {
      "name" : "Blazer",
      "picture" : "images/products/hills2.jpeg",
      "old_price" : 120,
      "price" : 80,
    },
    {
      "name" : "Blazer",
      "picture" : "images/products/pants1.jpg",
      "old_price" : 120,
      "price" : 80,
    },
    {
      "name" : "Blazer",
      "picture" : "images/products/pants2.jpeg",
      "old_price" : 120,
      "price" : 80,
    },
    {
      "name" : "Blazer",
      "picture" : "images/products/shoe1.jpg",
      "old_price" : 120,
      "price" : 80,
    },
    {
      "name" : "Blazer",
      "picture" : "images/products/skt1.jpeg",
      "old_price" : 120,
      "price" : 80,
    },
    {
      "name" : "Blazer",
      "picture" : "images/products/skt2.jpeg",
      "old_price" : 120,
      "price" : 80,
    },

  ];

  @override
  Widget build(BuildContext context){
    return GridView.builder(
      itemCount: product_list.length,
      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2
      ),
      itemBuilder: (BuildContext contex, int index){
        return SingleProduct(
          prod_name: product_list[index]['name'],
          prod_pic: product_list[index]['picture'],
          prod_oldprice: product_list[index]['old_price'],
          prod_price: product_list[index]['price'],
        );
      },
    );
  }
}

class SingleProduct extends StatelessWidget{
  final prod_name;
  final prod_pic;
  final prod_oldprice;
  final prod_price;

  SingleProduct({
    this.prod_name,
    this.prod_pic,
    this.prod_oldprice,
    this.prod_price
  });


  @override
  Widget build(BuildContext context){
    return Card(
      child: Hero(
        tag: prod_name,
        child: Material(
          child: InkWell(
            onTap: ()=> Navigator.of(context).push
            (new MaterialPageRoute(builder: (context)=> new ProductDetails())),

            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(prod_name,
                  style: TextStyle(fontWeight: FontWeight.bold),),

                  title: Text("\$$prod_price",
                  style: TextStyle(color: Colors.red, fontWeight: FontWeight.w800),),
                  
                  subtitle: Text("\$$prod_oldprice",
                  style: TextStyle(color: Colors.black87,fontWeight: FontWeight.w800, 
                  decoration: TextDecoration.lineThrough
                  ),
                ),
              ),
            ),
            child: Image.asset(prod_pic,
              fit : BoxFit.cover),
          ),
        ),
      ),
    ));
  }
}