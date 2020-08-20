//This file holds category cards as well as containers for the item cards

import 'package:flutter/material.dart';

class CategoryList extends StatefulWidget {
  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {

  //nammal ee variable (infocus) aanu state nokkan use cheyyane
  int infocus;
  @override
  Widget build(BuildContext context) {

    //types of foods add cheyyan ee list il idanam
    List<String> categoryList = [
      'Indian',
      'Chinese',
      'American',
      'Kerala',
      'Italian',
    ];

    //image URL's corresponding order il idanam
    List<String> URList=[
      'https://www.archanaskitchen.com/images/archanaskitchen/1-Author/sneha-archanaskitchen.com/Aam_Panna_Pani_Puri_Recipe_.jpg',
      'https://www.jocooks.com/wp-content/uploads/2020/04/sesame-noodles-1-11.jpg',
      'https://www.thespruceeats.com/thmb/l4w6PvMqsz1EjueCAh_foPmYafM=/3456x3456/smart/filters:no_upscale()/garlic-burger-patties-333503-hero-01-e4df660ff27b4e5194fdff6d703a4f83.jpg',
      'https://1.bp.blogspot.com/-bAr7TPvKLs8/XINpM6F844I/AAAAAAAA6s4/FVEgfbgRlVcJOVxnUjWK9tAKcmUYxLVUwCLcBGAs/s1600/ration-rice-idli.jpg',
      'https://www.acouplecooks.com/wp-content/uploads/2019/09/Pasta-with-Vodka-Sauce-002-735x919.jpg',
    ];
    //randum koodi oru array aakan nokki, but ListView range error kanikkunnu. This works, so did it like this

    return Container(
      height: 170,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categoryList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: InkWell(
                onTap: (){
                  setState(() {
                    infocus = index;
                  });
                },
                child: SizedBox(
                  height: 160,
                  width: 100,
                  child:DecoratedBox(
                    decoration: BoxDecoration(border: Border.all(color: Colors.white12) ,borderRadius: BorderRadius.circular(30), color: (infocus==index) ? Colors.greenAccent : Colors.transparent),
                    child: Column(
                      children: [

//====================================IMAGE START====================================================
                        Padding(
                          padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Container(
                              height: 60,
                              width: 60,
                              child: Image.network(URList[index], fit:BoxFit.cover),
                            ),
                          ),
                        ),
//=====================================TEXT START====================================================
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text(
                            categoryList[index],
                            style: TextStyle(color: ((infocus==index) ? Colors.black : Colors.white), fontWeight: FontWeight.bold, fontSize: 13)
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 2),
                          child: Text(
                              'Foods',
                              style: TextStyle(color: ((infocus==index) ? Colors.black : Colors.white), fontSize: 13)
                          ),
                        )
                      ],
                    )
                  ),
                ),
              ),
            );
          }),
    );
  }
}