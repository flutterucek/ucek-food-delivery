import 'package:flutter/material.dart';
import 'package:marquee_widget/marquee_widget.dart';
import 'package:ucek_food_delivery/option_list.dart';
import 'package:ucek_food_delivery/order.dart';
import 'package:ucek_food_delivery/products_appbar.dart';

class ProductPage extends StatelessWidget {
  String img, name, content, time, amount;
  ProductPage(String img, String name, String content, String time, String amount){
    this.img= img;
    this.name= name;
    this.content= content;
    this.time= time;
    this.amount= amount;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF090B0A),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Container(
              child: Stack(
                children: <Widget>[
                  ClipPath(
                    clipper: CardClipper(),
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      color: const Color(0xFF101417),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    //color: Colors.green,
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Column(
                            children: <Widget> [
                              InkWell(
                                onTap: (){
                                  Navigator.pop(context);
                                },
                                child:product_appbar()
                              ),
                            ],
                          ),
                        ),//For AppBar
                        Container(
                          height: 250,
                          width: 250,
                          child: Hero(
                            tag: name,
                            child: Image.asset(img),
                            transitionOnUserGestures: true,
                          ),
                        ),//For Image
                        Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.only(left: 15, top: 15, right: 15),
                            child:Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Marquee(
                                  child: Text(name,
                                    style: TextStyle(color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  pauseDuration: Duration(milliseconds: 2500),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      child: Image.asset('images/rupee.png',
                                        color: Colors.redAccent,
                                      ),
                                    ),
                                    Text(amount,
                                      style: TextStyle(fontSize: 20,
                                          color: Colors.redAccent
                                      ),
                                     ),
                                  ],
                                )
                              ],
                            ),
                          ),//For Name and Amount
                        Container(
                          height: 80,
                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.only(top: 20, left: 15, right: 15),
                            child: Marquee(
                              child: Column(
                                children: [
                                  Text(getContent(name),
                                    textAlign: TextAlign.left,
                                    style: TextStyle(fontSize: 15, color: Colors.white70),
                                  ),
                                ],
                              ),
                              direction: Axis.vertical,
                            )
                        ),//For Contents or discription
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Padding(padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
                            child: Text('Choose the ones you want to add',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18
                              ),
                            ),
                          ),
                        ),//For Choose Text
                        OptionList(name)//For Optionr
                      ],
                    ),
                  ),
                ],
              ),
            )
        ),
      ),
      bottomNavigationBar: Order(),
    );
  }
}

class CardClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    print(size.height);
    Path path = Path();
    path ..moveTo(0,0)
      ..lineTo(0, size.height/2)
      ..lineTo(size.width,30)
      ..lineTo(size.width, 0)
      ..lineTo(0, 0);
    path ..moveTo(0, size.height/2+120)
      ..lineTo(0, size.height)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, 150)
      ..lineTo(0, size.height/2+120);

    return path;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

String getContent(String name){
  String content;
  switch(name){
    case 'Vegetable Biryani': content= 'Veg biryani recipe with pot, pressure cooker & Instant pot options.  Vegetable biryani is an aromatic rice dish made by cooking basmati rice with mix veggies, herbs & biryani spices. Traditionally  was made by dum cooking marinated meat with basmati rice & spices. Making a vegetarian version becomes much simpler as the veggies need no marination.';
      break;
    case 'Paneer Butter Masala': content= 'Also known as butter paneer, it is a rich & creamy curry made with paneer, spices, onions, tomatoes, cashews and butter.\nIt is one of the most popular dishes in Indian restaurants similar to kadai paneer, palak paneer, matar paneer and malai kofta.';
      break;
    case 'Carrot Halwa': content= 'Carrot halwa is a Indian pudding made with fresh carrots, milk, sugar, ghee & nuts. It is made by simmering grated carrots in full fat milk & then sweetened with sugar.\nIt is flavored with cardamom powder & garnished with chopped nuts.\n Traditionally carrot halwa was made only with full fat milk and no processed ingredients like condensed milk, evaporated milk or khoya was used.';
      break;
    case 'Dim Sums': content= 'Dim sum is a Chinese cuisine of bite-sized portions served in small steamer baskets or on plates. Dim sum is generally considered Cantonese, though other varieties exist. In Cantonese tradition, dishes are usually served with tea. Together, they form a full tea brunch or yum cha, a term used interchangeably with dim sum. Dim sum are traditionally served as fully cooked, ready-to-serve dishes. Some Cantonese teahouses have servers push around carts of dim sum for diners to pick from.';
     break;
    case 'Hot & Sour Soup': content= 'Hot and sour soup is a soup from Asian culinary traditions. In all cases, the soup contains ingredients to make it both spicy and sour.';
     break;
    case 'Szechwan Chilli Chicken': content= 'Szechuan chicken is a delicious and flavourful dish made by tossing chicken in spicy, sour, hot & tongue tickling Sichuan sauce.\nSichuan cuisine is well known and loved for its bold flavours which comes from the generous use of garlic, red chilies and Sichuan peppercorn.\nOriginally foods from Sichuan cuisine are hot, spicy, pungent & sweet. Most Chinese restaurants serve foods that are toned down to suit the local palate.';
      break;
    case 'Spring Rolls': content= "Spring rolls are a large variety of filled, rolled appetizers or dim sum found in East Asian, South Asian, Middle Eastern and Southeast Asian cuisine. The name is a literal translation of the Chinese chūn juǎn. The kind of wrapper, fillings, and cooking technique used, as well as the name, vary considerably within this large area, depending on the region's culture.";
      break;
    case 'Chocolate Chip Cookies': content= 'A chocolate chip cookie is a drop cookie that originated in the United States and features chocolate chips or chocolate morsels as its distinguishing ingredient. Circa 1938, Ruth Graves Wakefield added chopped up bits from a Nestlé semi-sweet chocolate bar into a cookie.';
      break;
    case 'Cronut': content= 'A Cronut is a croissant-doughnut pastry invented by New York City pastry chef Dominique Ansel of Dominique Ansel Bakery while working at Fauchon in France. The treat was later brought over to New York City and sold in the Dominique Ansel Bakery.';
      break;
    case 'Pancakes': content= 'A pancake is a flat cake, often thin and round, prepared from a starch-based batter that may contain eggs, milk and butter and cooked on a hot surface such as a griddle or frying pan, often frying with oil or butter.';
      break;
    case 'Idiyappam': content= 'Idiyappam, also known as nool puttu or string hopper, or noolappam, is a rice noodle dish originating from the Indian states of Kerala and Tamil Nadu and as well as from Sri Lanka. It consists of rice flour pressed into noodles, woven into a flat disc-like shape and steamed.';
      break;
    case 'Ela Sadya': content= 'Sadhya is a feast of Kerala origin and of importance to all Malayalis, consisting of a variety of traditional vegetarian dishes usually served on a banana leaf in Kerala as lunch. Sadhya means banquet in Malayalam. Sadhya is typically served as a traditional dish for Onam, the state festival of Kerala.';
      break;
    case 'Parippu Curry': content= 'Dal is a term used in the Indian subcontinent for dried, split pulses that do not require pre-soaking. The term is also used for various soups prepared from these pulses.';
      break;
    case 'Idli Sambar': content= 'Idli or idly are a type of savoury rice cake, originating from the Indian subcontinent, popular as breakfast foods in Southern India and among Tamils in Sri Lanka. The cakes are made by steaming a batter consisting of fermented black lentils and rice.';
      break;
    case 'Lasagna': content= 'Lasagne are a type of wide, flat pasta, possibly one of the oldest types of pasta. Lasagne, or the singular lasagna, is an Italian dish made of stacked layers of this flat pasta alternating with fillings such as ragù and other vegetables, cheese, and seasonings and spices such as garlic, oregano and basil.';
      break;
    case 'Bruschetta': content= 'Bruschetta is an antipasto from Italy consisting of grilled bread rubbed with garlic and topped with olive oil and salt. Variations may include toppings of tomato, vegetables, beans, cured meat, or cheese.';
      break;
    case 'Pizza': content= 'Pizza is a savory dish of Italian origin consisting of a usually round, flattened base of leavened wheat-based dough topped with tomatoes, cheese, and often various other ingredients which is then baked at a high temperature, traditionally in a wood-fired oven. A small pizza is sometimes called a pizzetta.';
     break;
  }
  return content;
}