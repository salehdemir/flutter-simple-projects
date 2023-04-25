import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../screens/add_user_screen.dart';
import '../providers/great_users.dart';

class UserListScreen extends StatelessWidget {
  const UserListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User List Screen'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(AddUserScreen.routeName);
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: Consumer<GreatUsers>(
        child: Center(
          child: Text('Add some Users'),
        ),
        builder: (ctx, greatUsers, ch) => greatUsers.items.length <= 0
            ? ch!
            : ListView.builder(
                itemCount: greatUsers.items.length,
                itemBuilder: (ctx, i) => ListTile(
                  leading: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.all(8),
                        height: 64,
                        width: 64,
                        child: CircleAvatar(
                          backgroundImage: FileImage(greatUsers.items[i].image),
                        ),
                      ),
                      Title(
                          color: Colors.red,
                          child: Text(greatUsers.items[i].title))
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}








//  CircleAvatar(
//                     radius: 200,
//                     backgroundImage: FileImage(greatUsers.items[i].image),
//                   ),
//                   title: Text(greatUsers.items[i].title),
//                   onTap: () {},
