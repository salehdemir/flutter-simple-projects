import 'package:flutter/material.dart';
import './providers/great_users.dart';
import './screens/user_list_screen.dart';
import 'package:provider/provider.dart';
import './screens/add_user_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: GreatUsers(),
      child: MaterialApp(
        title: 'Add Users',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
          accentColor: Colors.amber,
        ),
        home: UserListScreen(),
        routes: {
          AddUserScreen.routeName: (ctx) => AddUserScreen(),
        },
      ),
    );
  }
}
