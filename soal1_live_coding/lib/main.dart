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
              SizedBox(height: 20,),
              Card(
                child: Column(
                  children: [
                    infotile(
                      icon: Icons.email,
                      label: 'Email',
                      value: 'Kcelyaz@gmail.com',
                    ),
                    infotile(
                      icon: Icons.phone,
                      label: 'No Telpon',
                      value: '085731936284',
                    ),
                    infotile(
                      icon: Icons.group,
                      label: 'Kelas',
                      value: 'TI25KS',
                    ),
                    infotile(
                      icon: Icons.work,
                      label: 'Github',
                      value: 'elyazz10',
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Text('Hobi dan Keahlian',style: TextStyle(fontSize: 20),),
              SizedBox(height: 20,),
              Card(
                child: Column(
                  children: [
                    infotile(
                      icon: Icons.music_note,
                      label: 'Hobi',
                      value: 'Dengar musik 24 jam',
                    ),
                    infotile(
                      icon: Icons.brush,
                      label: 'Keahlian',
                      value: 'Menggambar dan Melukis',
                    ),
                    infotile(
                      icon: Icons.sports_soccer,
                      label: 'Hobi',
                      value: 'Maen Bola',
                    )
                  ],
                ),
              )
            ],
          ),
        ),

        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Terimakasih telah melihat profile saya'),
          )
        );

      },
      tooltip: 'thanks',
      child: Icon(Icons.favorite),
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
