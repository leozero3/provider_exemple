import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_exemple/provider/provider_page.dart';
import 'package:provider_exemple/provider/user_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_){
        return UserModel(name: 'Leo', imgAvatar: 'https://upload.wikimedia.org/wikipedia/commons/8/88/Chevrolet_Opala_SS_19744.jpg', birthDate: '29/12/1995');
      },
      child: MaterialApp(
          title: 'Material App',
          theme: ThemeData(primarySwatch: Colors.blue),
          routes: {
            '/provider': (_) => ProviderPage(),
          },
          home: Builder(
            builder: (context) {
              return Scaffold(
                body: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('/provider');
                        },
                        child: Text('Provider'),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('Change Notifier'),
                      ),
                    ],
                  ),
                ),
              );
            },
          )),
    );
  }
}
