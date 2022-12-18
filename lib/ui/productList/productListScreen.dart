import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled/ui/checkoutPage/checkout_page.dart';
import 'package:untitled/ui/productList/components/productCard.dart';

import '../../model/productListModel/product.dart';

class ProductListScreen extends StatefulWidget {

  static String id = "ProductListScreen";
  List<Product> productList;

  ProductListScreen(this.productList, {super.key});

  State<StatefulWidget> createState() => ProductListScreenState(productList);
}

class ProductListScreenState extends State<ProductListScreen> {
  List<Product> productList;

  ProductListScreenState(this.productList);

  @override
  Widget build(BuildContext context) {
    productList.add(Product());
    productList.add(Product());
    productList.add(Product());
    productList.add(Product());
    productList.add(Product());
    productList.add(Product());
    productList.add(Product());
    productList.add(Product());
    return Scaffold(
      backgroundColor: const Color(0xffeeedeb),
      appBar: AppBar(
        title: const Text("Visualizer"),
        actions: <Widget>[
          IconButton(
            icon: SvgPicture.asset(
              "assets/cart.svg",
              color: Colors.white,
            ),
            //const Icon(
            //   Icons.shop,
            //   color: Colors.white,
            // ),
            onPressed: () {
              Navigator.pushNamed(context, CheckoutPage.id);
            },
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              margin: EdgeInsets.fromLTRB(15, 10, 0, 0),
              child: const Text(
                "Products List",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              )),
          Container(
            margin: const EdgeInsets.fromLTRB(10, 5, 10, 5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                    flex: 8,
                    child: Container(
                      child: const TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Search',
                        ),
                      ),
                    )),
                Expanded(
                  flex: 2,
                  child: IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () {},
                  ),
                )
              ],
            ),
          ),
          Expanded(
              child: productList.isNotEmpty
                  ? ListView.builder(
                      itemCount: productList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ProductCard(productList[index]);
                      },
                    )
                  : const Text("No products yet\nPull Down to refresh"))
        ],
      ),
    );
  }
}
