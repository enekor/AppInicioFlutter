import 'package:flutter/material.dart';

const int itemCount = 20;

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemCount,
      itemBuilder: (context, index) => ListTile(
        leading: const Icon(Icons.person_add_disabled),
        title: Text('Item ${(index + 1)}'),
        trailing: const Icon(Icons.select_all),
        onTap: () {
          debugPrint('item ${index + 1} tapped');
        },
      ),
    );
  }
}
