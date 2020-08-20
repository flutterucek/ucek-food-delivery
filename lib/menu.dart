import 'package:flutter/material.dart';
import 'package:ucek_food_delivery/menu_card.dart';

class MenuList extends StatelessWidget {
  int n;
  String item;
  MenuList(int n){
    this.n= n;
  }
  @override
  Widget build(BuildContext context) {
    List<String> Indian= ['Vegetable Biryani','Paneer Masala','Carrot Halwa'];
    List<String> Chineese= ['Dim Sums', 'Hot and Sour Soup', 'Szechwan Chilli Chicken', 'Spring Rolls'];
    List<String> American= ['Chocolate Chip Cookies', 'Cronut', 'Pancakes'];
    List<String> Kerala= ['Idiyappam', 'Ela Sadya', 'Parippu Curry', 'Idli Sambar'];
    List<String> Italian= ['Lasagna', 'Bruschetta', 'Pizza'];
    List<String> temp =List();
    List<String> product= List();
    switch(n){
      case 0: temp= Indian;
      break;
      case 1: temp= Chineese;
      break;
      case 2: temp= American;
      break;
      case 3: temp= Kerala;
      break;
      case 4: temp= Italian;
      break;
      default: temp= Indian;
    }
    return Container(
      height: 260,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: temp.length,
          itemBuilder: (context, index) {
            item= temp[index];
            switch(item){
              case 'Vegetable Biryani': product= ['images/veg_biriyani.png', 'Vegetable Biryani', 'Vegetable biryani is an aromatic rice dish.', '31m', '185.00'];
              break;
              case 'Paneer Masala': product= ['images/paneer_butter_masala.png', 'Paneer Masala', 'Marinated paneer cheese served in a spiced gravy.', '36m', '169.00'];
              break;
              case 'Carrot Halwa': product= ['images/carrot_halwa.png', 'Carrot Halwa', 'Indian pudding made with fresh carrots.', '30m', '82.00'];
              break;
              case 'Dim Sums': product= ['images/dim_sums.png','Dim Sums', 'Small bite-sized rounds stuffed with veggies.', '29m', '190.00'];
              break;
              case 'Hot and Sour Soup': product= ['images/hot_and_sour_soup.png', 'Hot & Sour Soup', 'Soup with a spicy and sour broth.', '31m', '138.00'];
              break;
              case 'Szechwan Chilli Chicken': product= ['images/szechwan_chilli_chicken.png', 'Chilli Chicken', 'Fiery delight straight from China.', '37m', '230.00'];
              break;
              case 'Spring Rolls': product= ['images/spring_rolls.png', 'Spring Rolls', 'Crisp appetizer where shredded veggies.','28m', '36.00'];
              break;
              case 'Chocolate Chip Cookies': product= ['images/cookies.png', 'Chocolate Cookies', 'Drop cookie that originated in the US.', '28m', '89.00'];
              break;
              case 'Cronut': product= ['images/cronut.png', 'Cronut', 'Cronut is a doughnut pastry invented by NYC.', '21m', '56.00'];
              break;
              case 'Pancakes': product= ['images/pancake.png', 'Pancakes', 'Pancake is a flat, often thin and round cake.', '36m', '131.00'];
              break;
              case 'Idiyappam': product= ['images/idiyappam.png', 'Idiyappam', 'A rice noodle dish from the Southern India.', '28m', '41.00'];
              break;
              case 'Ela Sadya': product= ['images/sadya.png', 'Ela Sadya', 'Sadhya is a feast of Kerala origin.', '37m', '200.00'];
              break;
              case 'Parippu Curry': product= ['images/dal.png', 'Parippu Curry', 'Used as a side-dish or curry for different dishes.', '35m', '30.00'];
              break;
              case 'Idli Sambar': product= ['images/idli_sambar.png', 'Idli Sambar', 'A type of savoury rice cake and its spicy side-dish.', '38m', '40.00'];
              break;
              case 'Lasagna': product= ['images/lasagna.png', 'Lasagna', 'Loaded with parmesan cheese and more.', '38m', '380.00'];
              break;
              case 'Bruschetta': product= ['images/bruschetta.png', 'Bruschetta', 'Grilled bread topped with veggies, tomato mix, etc.', '37m', '150.00'];
              break;
              case 'Pizza': product= ['images/pizza.png', 'Pizza', 'Fancy a pipping hot pizza, fresh out of the oven.', '32m', '260.00'];
              break;
            }
            return Container(
                padding: EdgeInsets.all(10.0),
                height: 250,
                width: 200,
                child: ItemCard(product[0], product[1], product[2], product[3], product[4])
              //Text(temp[index]),
            );
          }),
    );
  }
}