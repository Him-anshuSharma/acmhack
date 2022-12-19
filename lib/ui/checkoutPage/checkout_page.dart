import 'dart:math';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/ui/checkoutPage/providers/cart_provider.dart';

int totalSum = CartProvider().getTotal();

class CheckoutPage extends StatefulWidget {
  static String id = "CheckoutPage";
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      backgroundColor: const Color(0xFFEEEDEB),
      body: Column(
        children: <Widget>[
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 270),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(const Color(0xFFCC7677)),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                ),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Row(
                children: const [
                  Icon(
                    Icons.arrow_back,
                    size: 20,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Back",
                    style: TextStyle(fontSize: 25, fontFamily: "Poppins"),
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.only(top: 30, left: 30),
                child: Text(
                  "ITEM",
                  style: TextStyle(fontSize: 25, fontFamily: "Poppins"),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Padding(
                padding: EdgeInsets.only(top: 30, left: 30),
                child: Text(
                  "NAME",
                  style: TextStyle(fontSize: 25, fontFamily: "Poppins"),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30, left: 40),
                child: Text(
                  "QUANTITY",
                  style: TextStyle(fontSize: 25, fontFamily: "Poppins"),
                ),
              ),
            ],
          ),
          Expanded(
            child: Consumer<CartProvider>(
              builder: (context, provider, child) {
                return ListView.builder(
                    itemCount: provider.getCartItems().length,
                    itemBuilder: (BuildContext context, int index) {
                      return cartItemWidget(provider, index);
                    });
              },
            ),
          ),
          //       Padding(
          //         padding: const EdgeInsets.all(15.0),
          //         child: Container(
          //           decoration: BoxDecoration(
          //             borderRadius: BorderRadius.circular(30),
          //             color: const Color(0xFF967A76),
          //           ),
          //           child: Row(
          //             children: <Widget>[
          //               Expanded(
          //                 child: Padding(
          //                   padding: const EdgeInsets.all(8.0),
          //                   child: Image.asset(
          //                     "assets/bed.png",
          //                     height: 100,
          //                     width: 150,
          //                   ),
          //                 ),
          //               ),
          //               const Padding(
          //                 padding: EdgeInsets.only(left: 20, right: 35),
          //                 child: Text(
          //                   "BED",
          //                   style: TextStyle(
          //                     fontFamily: "Poppins",
          //                     fontSize: 25,
          //                     color: Colors.white,
          //                   ),
          //                 ),
          //               ),
          //               Column(
          //                 children: <Widget>[
          //                   const Text(
          //                     "X2",
          //                     style: TextStyle(
          //                       fontFamily: "Poppins",
          //                       fontSize: 20,
          //                       color: Colors.white,
          //                     ),
          //                   ),
          //                   const SizedBox(
          //                     height: 10,
          //                   ),
          //                   SizedBox(
          //                     width: 50,
          //                     height: 30,
          //                     child: ElevatedButton(
          //                       style: ButtonStyle(
          //                         backgroundColor:
          //                             MaterialStateProperty.all<Color>(
          //                           Color(0xFFCC7677),
          //                         ),
          //                         shape: MaterialStateProperty.all<
          //                             RoundedRectangleBorder>(
          //                           RoundedRectangleBorder(
          //                             borderRadius: BorderRadius.circular(20.0),
          //                           ),
          //                         ),
          //                       ),
          //                       onPressed: () {},
          //                       child: const Text(
          //                         "+1",
          //                         style: TextStyle(
          //                           fontFamily: "Poppins",
          //                           fontSize: 15,
          //                         ),
          //                       ),
          //                     ),
          //                   ),
          //                 ],
          //               ),
          //               const SizedBox(width: 20),
          //               Padding(
          //                 padding: const EdgeInsets.all(8.0),
          //                 child: ElevatedButton(
          //                     style: ButtonStyle(
          //                       backgroundColor:
          //                           MaterialStateProperty.all<Color>(
          //                               Color(0xFFCC7677)),
          //                       foregroundColor:
          //                           MaterialStateProperty.all<Color>(
          //                               Colors.white),
          //                       shape: MaterialStateProperty.all<
          //                           RoundedRectangleBorder>(
          //                         RoundedRectangleBorder(
          //                           borderRadius: BorderRadius.circular(18.0),
          //                         ),
          //                       ),
          //                     ),
          //                     onPressed: () {},
          //                     child: Icon(Icons.delete)),
          //               ),
          //             ],
          //           ),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),

          Row(
            children: <Widget>[
              Expanded(child: SizedBox()),
              Padding(
                padding: const EdgeInsets.only(
                  top: 30,
                ),
                child: Column(
                  children: [
                    Text(
                      "Total:Rs.${totalSum}",
                      style: const TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 20,
                      ),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Color(0xFFCC7677)),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Buy",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container cartItemWidget(CartProvider provider, int index) {
    return Container(
      height: min(150, 120),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: const Color(0xFF967A76),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    provider.cartItems[index].cartItemImage,
                    // height: 100,
                    // width: 150,
                    scale: 3,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 35),
                child: Text(
                  provider.cartItems[index].getCartItemName(),
                  style: const TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
              Column(
                children: <Widget>[
                  Text(
                    "X${provider.cartItems[index].getCartItemQuantity()}",
                    style: const TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 50,
                    height: 30,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xFFCC7677),
                        ),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          provider.cartItems[index].cartItemQuantity++;
                          totalSum = provider.getTotal();
                        });
                      },
                      child: const Text(
                        "+1",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
