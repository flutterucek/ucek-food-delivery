import 'package:flutter/material.dart';
import 'package:ucek_food_delivery/home_page.dart';
import 'package:ucek_food_delivery/product.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
//      home: HomePage()
        home: HomeView());
  }
}

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  PageController _pageController;
  Product product = Product();

  @override
  void initState() {
    List<Product> list = List();

    product.name = 'Drilled Veggie';
    product.desc = 'Some description';
    product.price = 50.50;

    list.add(product);

    _pageController = PageController(viewportFraction: 0.6);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            height: 400,
            child: PageView(
              pageSnapping: true,
              controller: _pageController,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                      onTap: () async {
                        String someValue = await Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return ProductPage(
                            product: product,
                          );
                        }));
                        print(someValue);
                      },
                      child: Container(
                        color: Colors.blue,
                      )),
                ),
                Container(
                  color: Colors.red,
                ),
                Container(
                  color: Colors.green,
                ),
                Container(
                  color: Colors.yellow,
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          RaisedButton(
            child: Text('Change page'),
            onPressed: () async {
              String category = await fetchCategories();
              _pageController.jumpToPage(3);
//              _pageController.animateToPage(3, duration: Duration(
//                milliseconds: 800
//              ), curve: Curves.decelerate);
            },
          ),
          Container(
            child: RichText(
              text: TextSpan(
                  text: 'Hi',
                  style: TextStyle(fontSize: 12, color: Colors.blue),
                  children: <TextSpan>[
                    TextSpan(
                        text: '\nAkash',
                        style: TextStyle(
                          fontSize: 30,
                        ))
                  ]),
            ),
          )
        ],
      ),
    );
  }

  Future<String> fetchCategories() async {
    await Future.delayed(Duration(seconds: 3));
    return 'This is returned category';
  }
}

class ProductPage extends StatelessWidget {
  final Product product;

  const ProductPage({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
//            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  Navigator.of(context).pop('Returned Value');
                },
                child: Text('Back'),
              ),
              Text(product.name),
              Text(product.desc),
              Text(product.price.toString())
            ],
          ),
        ),
      ),
    );
  }
}
