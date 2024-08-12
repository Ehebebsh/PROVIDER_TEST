import 'package:flutter/material.dart';
import 'package:provide/third_page.dart';
import 'package:provider/provider.dart';
import 'user_provider.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
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
                  MaterialPageRoute(builder: (context) => ThirdPage()),
                );
              },
              child: Text('Go to Third Page'),
            ),
          ],
        ),
      ),
    );
  }
}


