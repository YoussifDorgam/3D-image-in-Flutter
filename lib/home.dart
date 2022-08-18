import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Sneaker',
          style: TextStyle(
              color: Colors.black, fontSize: 28, fontStyle: FontStyle.italic),
        ),
        centerTitle: true,
        elevation: 0.1,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.deepPurpleAccent,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 350,
              width: double.infinity,
              child: WebView(
                initialUrl: 'https://app.vectary.com/p/7Rkk09lqFGjKTngQ1jjyYk',
                javascriptMode: JavascriptMode.unrestricted,
              ),
            ),
            const Text(

              'Sneaker ||',
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.black, fontSize: 25),
            ),
            const Expanded(
              child: Text(
                '''Product details
Package Dimensions ‏ : ‎ 29 x 23 x 11 cm; 1 Kilograms
Date First Available ‏ : ‎ 7 December 2021
Manufacturer ‏ : ‎ Dejavu
ASIN ‏ : ‎ B09N7QF9S6
Item model number ‏ : ‎ PMA-DVTT-010
Department ‏ : ‎ Womens''',
                style: TextStyle(color: Colors.grey,),
              ),
            ),
            Row(
              children: [
                const Text(
                  'Quantity',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.remove,
                      color: Colors.deepPurpleAccent,
                    )),
                Text(
                  '1',
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add,
                      color: Colors.deepPurpleAccent,
                    )),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.deepPurpleAccent),
          child: const Center(
              child: Text(
            'Save',
            style: TextStyle(color: Colors.white, fontSize: 28),
          )),
        ),
      ),
    );
  }
}
