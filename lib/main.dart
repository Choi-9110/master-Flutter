import 'package:appst/widgets/button.dart';
import 'package:appst/widgets/currency_card.dart';
import 'package:flutter/material.dart';

class Player {
  // String name ='nico'; ==>
  String? name;

  // String ? <- "?" 있을수도 없을수도!

  Player({required this.name});
}

void main() {
  var nico = Player(name: 'potato');
  print(nico.name);
  runApp(const App());

  // widget을 만든다는건 class 를 만든다는것이다.
}

class App extends StatelessWidget {
  const App({super.key});

  // widget 즉 , class를 만들기위해 3개의 core Widget중 하나를 상속받아야함 (extend)
  // StatelessWidget  을 가장 많이쓰는 Widget!
  // StatelessWidget 을 상속받을경우 Build 메소드를 구현해줘야한다.
  // Build 메소드 :: 뭘 리턴하든 보여주는것.

// 머티리얼  material       //  MaterialApp() 구글
// 쿠퍼티노  cupertino      //  CupertinoApp   IOS

  @override
  Widget build(BuildContext context) {
    // CupertinoApp
    // MaterialApp()
    // 기본 UI 설정과 같은 재료들이다. 둘중하나는 무조건 선택해서 진행해야한다.
    // 그저 root Widget 에서 의 선택일뿐이다.
    return MaterialApp(
      // 화면이 scaffold 라는걸 가지고 있어야한다.
      // scaffold :: 구조. 뼈대
      home: Scaffold(
          backgroundColor: const Color(0xFF181818),
//  Colors.black 이와 같이 기본의 정해진 컬러를 사용한다면 컬러s를 이용.
//  컬러 커스텀으로 사용할 경우 Color 을 쓴다 backgroundColor: Color(0xFF181818),
// shade900 어둡기 채도 조절

          /*
        appBar: AppBar(
          centerTitle: true,
          // 타이틀의 위치
          elevation: 10,
          // 그림자
          title: Text('Hello Flutter!!'),
        ),
        */

/*
           Padding 으로 감싸기위해선 
           child 가 필요하다. 
           + padding 로 감쌋으니 당연히 padding 값이 선언되어야한다. 

  EdgeInsets.only.left() 등 한군대로 
  EdgeInsets.all(10) , 전체패딩
  only 대신 => symmetric()
  수직 수평 padding 값을 정해줄수있다! 
 */
          body: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          'Hey, Selena',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Text(
                          'Welcome back',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.7),
                            fontSize: 18,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 70,
                ),
                Text(
                  'Total Balance',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white.withOpacity(0.8),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  '\$5 194 482',
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Button(
                      text: 'Transfer',
                      bgColor: Color(0xFFF1B33B),
                      textColor: Colors.black,
                    ),
                    Button(
                      text: 'Request',
                      bgColor: Color(0xFF1F2123),
                      textColor: Colors.white,
                    )
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Wallets',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'View All',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const CurrencyCard(
                  name: 'Euro',
                  code: 'EUR',
                  amount: '6 428',
                  icon: Icons.euro_symbol,
                  inInverted: false,
                  off: 0,
                ),
                const CurrencyCard(
                  name: 'Bitcoin',
                  code: 'BTC',
                  amount: '9 785',
                  icon: Icons.currency_bitcoin_rounded,
                  inInverted: true,
                  off: -20,
                ),
                const CurrencyCard(
                  name: 'Dollar',
                  code: 'USD',
                  amount: '428',
                  icon: Icons.attach_money,
                  inInverted: false,
                  off: -40,
                ),
              ],
            ),
          )
          /* Center(
          child: Text('Center!! Hello world!'),
        ),
        */
          ),
    );
  }
}
