import 'package:flutter/material.dart';


class OptionList extends StatefulWidget {

  String name;
  OptionList(String name){
    this.name=  name;
  }
  @override
  _OptionListState createState() => _OptionListState(name);
}


class _OptionListState extends State<OptionList> {
  String name;
  _OptionListState(String name){
    this.name= name;
  }
  int infocus=0;
  @override
  Widget build(BuildContext context) {

    List<String> variety= List();
    switch(name){
      case 'Vegetable Biryani': variety= ['Normal', 'Hyderabadi', 'Baby Corn', 'Brinjal', 'Cauliflower', 'KFC', 'Matka'];
        break;
      case 'Paneer Butter Masala': variety= ['Normal', 'Combo', 'Hot', 'Combo Hot'];
        break;
      case 'Carrot Halwa': variety= ['Normal', 'Sugar Free', 'Combo', 'Sugar Free Combo'];
        break;
      case 'Dim Sums': variety= ['Normal', 'BBQ Pork', 'Fried', 'Potstickers'];
        break;
      case 'Hot & Sour Soup': variety= ['Normal', 'Tanky', 'Spicy'];
        break;
      case 'Szechwan Chilli Chicken': variety= ['Normal', 'Noodles'];
        break;
      case 'Spring Rolls': variety= ['Veg', 'Chicken', 'Cheese', 'Cinnamon', 'Meat'];
        break;
      case 'Chocolate Chip Cookies': variety= ['Normal', 'Oats', 'Black Forest'];
        break;
      case 'Cronut': variety= ['Normal'];
        break;
      case 'Pancakes': variety= ['Normal', 'Double', 'Triple', 'Blueberry', 'Ice Cream'];
        break;
      case 'Idiyappam': variety= ['6 Nos', 'Kadala', 'Egg Curry', 'Kuruma'];
        break;
      case 'Ela Sadya': variety= ['Normal', 'Fish'];
        break;
      case 'Parippu Curry': variety= ['Normal'];
        break;
      case 'Idli Sambar': variety= ['4 Nos', 'Sambar Vada'];
        break;
      case 'Lasagna': variety= ['Normal', 'Classic', 'Beef', 'Bacon'];
        break;
      case 'Bruschetta': variety= ['Normal', 'Chicken', 'Melt'];
        break;
      case 'Pizza': variety= ['7" Meat', '7" Cheesy', '7" BBQ', '12" Garden Fresh', '12" Meat', '12" Cheesy', '12" Hot Indian'];
        break;
    }
    return Column(
      children: <Widget>[
        Container(
          height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: variety.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(15),
                  child: InkWell(
                    onTap: (){
                      setState(() {
                        infocus = index;
                      });
                    },
                    child: SizedBox(
                      height: 100,
                      width: 100,
                      child:DecoratedBox(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white12),
                          borderRadius: BorderRadius.circular(25),
                          color: (infocus==index) ? Colors.white : Colors.transparent),
                          child: Column(
                            children: [
//====================================IMAGE START====================================================
                              Padding(
                                padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Container(
                                    height: 60,
                                    width: 60,
                                    child: Image.asset(imgloc(variety[index]), fit:BoxFit.cover),
                                  ),
                                ),
                              ),
//=====================================TEXT START====================================================
                              Padding(
                                padding: const EdgeInsets.only(top: 13),
                                child: Text(
                                  variety[index],
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: ((infocus==index) ? Colors.black : Colors.white), fontWeight: FontWeight.bold, fontSize: 13)
                                ),
                              ),
                            ],
                          )
                      ),
                    ),
                  ),
                );
              }
            ),
        ),
      ]
    );
  }
}

String imgloc(String item){
  String path;
  switch(item){
    case 'Normal': path='images/normal.png';
      break;
    case 'Classic': path='images/normal.png';
      break;
    case 'Hyderabadi': path='images/hyderabad.png';
      break;
    case 'Baby Corn': path='images/corn.png';
      break;
    case 'Brinjal': path='images/eggplant.png'  ;
      break;
    case 'Cauliflower': path='images/cauliflower.png';
      break;
    case 'KFC': path='images/kfc.png';
      break;
    case 'Matka': path='images/pot.png';
      break;
    case 'Combo': path='images/combo.png';
      break;
    case 'Hot': path='images/chili_pepper.png';
      break;
    case 'Combo Hot': path='images/hot_combo.png';
      break;
    case 'Sugar Free': path='images/sugar_free.png';
      break;
    case 'Sugar Free Combo': path='images/sugar_free_combo.png';
      break;
    case 'BBQ Pork': path='images/swine.png';
     break;
    case 'Fried': path='images/fried.png';
      break;
    case 'Potstickers': path='images/potstickers.png';
     break;
    case 'Tanky': path='images/tomato.png';
      break;
    case 'Spicy': path='images/chili_pepper.png';
      break;
    case 'Noodles': path='images/noodles.png';
     break;
    case 'Veg': path='images/vegetarian_food_symbol.png';
      break;
    case 'Chicken': path='images/chicken.png';
      break;
    case 'Cheese': path='images/cheese.png';
      break;
    case 'Cinnamon': path='images/cinnamon_sticks.png';
      break;
    case 'Meat': path='images/cut_of_meat.png';
      break;
    case 'Beef': path='images/cut_of_meat.png';
      break;
    case 'Oats': path='images/wheat.png';
      break;
    case 'Black Forest': path='images/Cookie Emoji.png';
      break;
    case 'Double': path='images/2x.png';
      break;
    case 'Triple': path='images/3x.png';
      break;
    case 'Blueberry': path='images/blueberry.png';
     break;
    case 'Ice Cream': path='images/ice_cream.png';
     break;
    case '6 Nos': path='images/6.png';
      break;
    case 'Kadala': path='images/kadala.png';
      break;
    case 'Egg Curry': path='images/egg.png';
      break;
    case 'Kuruma': path='images/potato.png';
      break;
    case 'Fish': path='images/fish.png';
      break;
    case '4 Nos': path='images/4.png';
      break;
    case 'Sambar Vada': path='images/sambar_vada.png';
      break;
    case 'Bacon': path='images/bacon.png';
      break;
    case 'Melt': path='images/melt.png';
      break;
    case '7" Meat':
    case '7" Cheesy':
    case '7" BBQ': path='images/seven.png';
      break;
    case '12" Garden Fresh':
    case '12" Meat':
    case '12" Cheesy':
    case '12" Hot Indian': path='images/12.png';
  }
  return path;
}