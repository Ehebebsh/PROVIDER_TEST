import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'fourth_page.dart';
import 'user_provider.dart';

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Third Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<UserProvider>(
              builder: (context, userProvider, child) {
                return Text(userProvider.user != null
                    ? 'Hello, ${userProvider.user!.name}!'
                    : 'No user information');
              },
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FourthPage()),
                );
              },
              child: Text('Go to Fourth Page'),
            ),
          ],
        ),
      ),
    );
  }
}

// ThirdPage와 FourthPage도 비슷한 구조로 구현합니다.
