
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'profileku',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white10),
        useMaterial3: true,
      ),
      themeMode: ThemeMode.dark,
      home: Profile()
    );
  }
}
class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Mahasiswa'),
        backgroundColor: Colors.greenAccent,
        foregroundColor: Colors.black,
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('tidak ada data pencarian'),)
            );
          },
          tooltip: 'search',
          icon: Icon(Icons.search),
          ),

        ],
      ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(25),
        child: Center(
          child: Column(
            children: [
              CircleAvatar(
                radius: 50,
                child: Icon(Icons.person,size: 50,),
              ),
              SizedBox(height: 15,),
              Text(
                'ahmad ilyas',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              Text(
                '1125170130',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Text(
                'Tekhnik Informatika',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              SizedBox(height: 25,)
            ],
          ),
        ),
        
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Tidak ada data ditambahkan'),
          )
        );

      },
      tooltip: 'add',
      child: Icon(Icons.add),
      ),
    );
  }
}
class infotile extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;


  const infotile({super.key,
  required this.icon,
  required this.label,
  required this.value,
  
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(label),
      subtitle: Text(value),
    );
  }
}
