import 'package:flutter/material.dart';
import '../models/profile.dart';
import '../widgets/info_tile.dart';

class ProfilePage extends StatefulWidget {
  final VoidCallback onToggleTheme;
  final bool isDark;

  const ProfilePage({
    super.key,
    required this.onToggleTheme,
    required this.isDark,
  });

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  Profile profile = Profile(
    name: 'ahmad ilyas',
    nim: '1125170130',
    prodi: 'Tekhnik Informatika',
    kelas: 'TI25KS',
    bio: 'Mahasiswa Tekhnik Informatika kelas TI25KS',
    email: 'Kcelyaz@gmail.com',
    phone: '085731936284',
    github: 'elyazz10',
    imagePath: 'assets/images/profile.png',
  );

  int currentIndex = 0;

  void bukaEdit() async {
    final result = await Navigator.pushNamed(
      context,
      '/edit',
      arguments: profile,
    );
    if (result != null && result is Profile) {
      setState(() {
        profile = result;
      });
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Profil berhasil diperbarui')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Mahasiswa'),
        backgroundColor: Colors.greenAccent,
        foregroundColor: Colors.black,
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(widget.isDark ? Icons.light_mode : Icons.dark_mode),
            onPressed: widget.onToggleTheme,
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              decoration: const BoxDecoration(color: Colors.greenAccent),
              accountName: Text(
                profile.name,
                style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              accountEmail: Text(
                profile.email,
                style: const TextStyle(color: Colors.black),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage(profile.imagePath),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Profil'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('Tentang Saya'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/about');
              },
            ),
            ListTile(
              leading: const Icon(Icons.edit),
              title: const Text('Edit Profil'),
              onTap: () {
                Navigator.pop(context);
                bukaEdit();
              },
            ),
            ListTile(
              leading: const Icon(Icons.brightness_6),
              title: const Text('Mode Gelap'),
              trailing: Switch(
                value: widget.isDark,
                onChanged: (val) {
                  widget.onToggleTheme();
                },
              ),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Logout'),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/login');
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Center(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(profile.imagePath),
                ),
                const SizedBox(height: 15),
                Text(
                  profile.name,
                  style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Text(
                  profile.nim,
                  style: const TextStyle(fontSize: 16),
                ),
                Text(
                  profile.prodi,
                  style: const TextStyle(fontSize: 16),
                ),
                Text(
                  profile.kelas,
                  style: const TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 10),
                Text(
                  profile.bio,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 14, fontStyle: FontStyle.italic),
                ),
                const SizedBox(height: 20),
                Card(
                  child: Column(
                    children: [
                      InfoTile(
                        icon: Icons.email,
                        label: 'Email',
                        value: profile.email,
                      ),
                      InfoTile(
                        icon: Icons.phone,
                        label: 'No Telpon',
                        value: profile.phone,
                      ),
                      InfoTile(
                        icon: Icons.group,
                        label: 'Kelas',
                        value: profile.kelas,
                      ),
                      InfoTile(
                        icon: Icons.code,
                        label: 'Github',
                        value: profile.github,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: bukaEdit,
        child: const Icon(Icons.edit),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
          if (index == 1) {
            Navigator.pushNamed(context, '/about');
          } else if (index == 2) {
            bukaEdit();
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Tentang',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.edit),
            label: 'Edit',
          ),
        ],
      ),
    );
  }
}
