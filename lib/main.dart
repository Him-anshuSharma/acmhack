import 'package:flutter/material.dart';
import 'package:untitled/constants/constants.dart';
import 'package:untitled/ui/checkoutPage/checkout_page.dart';
import 'package:untitled/ui/detail/detail.dart';
import 'package:untitled/ui/login/login%20page.dart';
import 'package:untitled/ui/productList/productListScreen.dart';
import 'package:untitled/ui/categoryList/home_screen.dart';
import 'package:provider/provider.dart';
import 'ui/categoryList/providers/category_provider.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(ChangeNotifierProvider(create: (context) => CategoryProvider(), child: const MyApp()),);
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    Constants constants = Constants();
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      initialRoute: LoginPage.id,
      routes: {
        HomePage.id : (context) => const HomePage(),
        LoginPage.id: (context) =>const LoginPage(),
        ProductListScreen.id: (context) =>ProductListScreen(constants.productList),
        DetailScreen.id: (context) => const DetailScreen(),
        CheckoutPage.id: (context) => const CheckoutPage()
      },
    );
  }
}
