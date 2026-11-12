import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData.dark(),
    home: AdCardScreen(),
  ));
}

class AdCardScreen extends StatefulWidget {
  @override
  _AdCardScreenState createState() => _AdCardScreenState();
}

class _AdCardScreenState extends State<AdCardScreen> {
  int page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF111112),
      body: Center(
        child: SizedBox(
          width: 450,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 279,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      PageView(
                        onPageChanged: (index) {
                          setState(() {
                            page = index;
                          });
                        },
                        children: [
                          Image.asset('assets/images/headphones.png', fit: BoxFit.cover),
                          Image.asset('assets/images/headphones.png', fit: BoxFit.cover),
                          Image.asset('assets/images/headphones.png', fit: BoxFit.cover),
                          Image.asset('assets/images/headphones.png', fit: BoxFit.cover),
                          Image.asset('assets/images/headphones.png', fit: BoxFit.cover),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 20),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            for (int i = 0; i < 5; i++)
                              Container(
                                margin: EdgeInsets.all(4),
                                width: 8,
                                height: 8,
                                decoration: BoxDecoration(
                                  color: page == i ? Colors.deepOrange : Colors.grey,
                                  shape: BoxShape.circle,
                                ),
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Наушники Beats by Dre', style: TextStyle(fontSize: 18)),
                      Container(height: 15),
                      Row(
                        children: [
                          Text('400 000 ₩', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                          Text('  Договорная', style: TextStyle(color: Colors.deepOrange)),
                        ],
                      ),
                      Container(height: 20),
                      Text('Описание', style: TextStyle(fontSize: 18)),
                      Container(height: 10),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.grey[850],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          'Эти наушники — верный спутник в мире звука и стиля. С их элегантным дизайном и превосходным качеством звучания вы погружаетесь в музыкальный опыт нового уровня. Наушники идеально сбалансированы между комфортом и функциональностью, обеспечивая чистоту звука и ясные высокие частоты. Идеальный выбор для тех, кто ценит каждую ноту и стремится к идеальному звучанию в любой обстановке.',
                          style: TextStyle(fontSize: 13),
                        ),
                      ),
                      Container(height: 20),
                      Text('Продавец', style: TextStyle(fontSize: 18)),
                      Container(height: 10),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(14),
                        decoration: BoxDecoration(
                          color: Colors.grey[850],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          children: [
                            ClipOval(
                              child: Image.asset(
                                'assets/images/avatar.png',
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,
                                errorBuilder: (context, error, stackTrace) {
                                  return CircleAvatar(
                                    radius: 25,
                                    child: Icon(Icons.person),
                                  );
                                },
                              ),
                            ),
                            Container(width: 12),
                  Expanded(
            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                                  Text('Иванов Иван', style: TextStyle(fontSize: 16)),
                                  Row(
                                    children: [
                                      Icon(Icons.star, color: Colors.deepOrange, size: 16),
                                      Text(' Отзывы (20)', style: TextStyle(fontSize: 12)),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Icon(Icons.chevron_right),
                          ],
                        ),
                      ),
                      Container(height: 15),
                      Container(
                        width: double.infinity,
                        height: 46,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(backgroundColor: Colors.deepOrange),
                          child: Text('Связаться с продавцом', style: TextStyle(color: Colors.white)),
                        ),
                      ),
                      Container(height: 15),
                      Center(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                          decoration: BoxDecoration(
                            color: Colors.grey[850],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('Пожаловаться', style: TextStyle(color: Colors.red, fontSize: 12)),
                              Container(width: 6),
                              Icon(Icons.warning_amber, color: Colors.red, size: 16),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}