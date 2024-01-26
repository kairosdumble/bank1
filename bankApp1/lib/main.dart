import 'package:flutter/material.dart';
import 'package:webtooon/botton.dart';
import 'package:webtooon/currency_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 80,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        "hey,Seounghun",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w800),
                      ),
                      Text(
                        "welcome back",
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.8), fontSize: 18),
                      ),
                    ],
                  )
                ]),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Total Balance',
                  style: TextStyle(
                      color: Color.fromARGB(200, 255, 255, 255), fontSize: 22),
                ),
                const SizedBox(
                  height: 2,
                ),
                const Text(
                  '\$5 194 482',
                  style: TextStyle(
                    color: Color.fromARGB(200, 255, 255, 255),
                    fontSize: 44,
                    fontWeight: FontWeight.w600, //두께
                  ),
                ),
                const SizedBox(height: 10),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Button(
                      text: "Transfer",
                      bgColor: Color(0xFFF1B33B),
                      textColor: Colors.black,
                    ),
                    Button(
                      text: "request",
                      bgColor: Color(0xFF1F2123),
                      textColor: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "wallets",
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "View All",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white.withOpacity(0.8),
                        ),
                      ),
                    ]),
                const SizedBox(
                  height: 10,
                ),
                const Currencycard(
                    name: "Euro",
                    code: "EUR",
                    amount: "6 428",
                    isInverted: false,
                    icon: Icons.euro_rounded),
                Transform.translate(
                  offset: const Offset(0, -20),
                  child: const Currencycard(
                      name: "Bitcoin",
                      code: "BTC",
                      amount: "9 785",
                      isInverted: true,
                      icon: Icons.currency_bitcoin_rounded),
                ),
                Transform.translate(
                  offset: const Offset(0, -40),
                  child: const Currencycard(
                      name: "Dollor",
                      code: "USD",
                      amount: "428",
                      isInverted: false,
                      icon: Icons.attach_money_outlined),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//"Row" and "Column" have MainAxis and CrossAxis.
//MainAxis of Row is "수평 방향(가로)".
//MainAxis of Column is "수직 방향(세로)"
//CrossAxis of Row is "세로 방향".
//CrossAxis of Column is "가로 방향".

//mission
//1.change the code to controll In currency_card
//("Transform.translate"and"offset: const Offset(dx,dy),") 