import 'package:flutter/material.dart';
import 'package:provide/home_page.dart';
import 'package:provider/provider.dart';
import 'user_provider.dart';

class FourthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fourth Page'),
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
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              child: Text('Go to Homepage'),
            ),
          ],
        ),
      ),
    );
  }
}

// ThirdPage와 FourthPage도 비슷한 구조로 구현합니다.
