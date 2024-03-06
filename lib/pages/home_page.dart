import 'package:flutter/material.dart';
import 'package:kiosk_ui/component/carasoul.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   leadingWidth: 200,
      //   toolbarHeight: 100,
      //   leading: Image.network(
      //     'http://110.44.121.171:2222/logo.png',
      //   ),
      //   actions: const [
      //     Padding(
      //       padding: EdgeInsets.all(30.0),
      //       child: Column(
      //         children: [Text('Mon| 10:36 AM'), Text('January 1, 2024')],
      //       ),
      //     )
      //   ],
      // ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 1),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(19.0),
                      child: Image.network(
                        'https://nmb.com.np/_next/image?url=%2Fimages%2Flogo.png&w=384&q=75',
                        height: 50,
                      ),
                    ),
                    const Text(
                      'Mon| 10:36 AM \n January 1, 2024',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
            const Text(
              "Welcome to Kiosk Services",
              style: TextStyle(
                color: Color.fromARGB(255, 17, 58, 129),
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Text(
              " किओस्क सेवामा स्वागत छ",
              style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            Carasoul(),
            const Text(
              'Our Services : Cheque Deposite, Cheque Stop, Cheque Requisition',
              style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
            const Text(
              'हाम्रा सेवाहरु : चॆक जम्मा, चॆक रोक्का, चॆक अनुरोध ',
              style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 13,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            const Text(
              'कृपया आफ्नो चेकमा A/C Pay लेख्न नबिर्सुनुहोला ',
              style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {},
              child: const Text(
                'Get Started (अगाडि बढ्नुहोस्)',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 120,
            ),
            // Footer
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Image.network(
                      'https://generaltechnology.com.np/wp-content/uploads/2020/08/GenTechLogo.png',
                      height: 60,
                    ),
                  ),
                  const Expanded(
                    flex: 2,
                    child: Text(
                      'generaltechnology.com.np | 9802300007 | © Copyright 2023. All rights reserved.',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                  Expanded(
                    child: Image.network(
                      'https://www.elitenet.com.np/wp-content/uploads/2022/05/header-logo.png',
                      height: 60,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
