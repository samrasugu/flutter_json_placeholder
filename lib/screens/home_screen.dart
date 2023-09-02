import 'package:flutter/material.dart';
import 'package:flutter_json_placeholder/services/fetch_users.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Json Serializable'),
      ),
      body: FutureBuilder(
        future: FetchUsers().fetchUsers(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          } else if (snapshot.hasError) {
            return Center(
              child: Text('${snapshot.error}'),
            );
          }

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                final user = snapshot.data![index];
          
                return Card(
                  child: ListTile(
                    title: Text(user.name!),
                    subtitle: Text(user.email!),
                    trailing: Text(user.email!),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
