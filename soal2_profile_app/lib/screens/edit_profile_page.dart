import 'package:flutter/material.dart';
import '../models/profile.dart';

class EditProfilePage extends StatefulWidget {
  final Profile profile;

  const EditProfilePage({super.key, required this.profile});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final _formKey = GlobalKey<FormState>();

  late TextEditingController nameController;
  late TextEditingController nimController;
  late TextEditingController prodiController;
  late TextEditingController kelasController;
  late TextEditingController bioController;
  late TextEditingController emailController;
  late TextEditingController phoneController;
  late TextEditingController githubController;

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController(text: widget.profile.name);
    nimController = TextEditingController(text: widget.profile.nim);
    prodiController = TextEditingController(text: widget.profile.prodi);
    kelasController = TextEditingController(text: widget.profile.kelas);
    bioController = TextEditingController(text: widget.profile.bio);
    emailController = TextEditingController(text: widget.profile.email);
    phoneController = TextEditingController(text: widget.profile.phone);
    githubController = TextEditingController(text: widget.profile.github);
  }

  @override
  void dispose() {
    nameController.dispose();
    nimController.dispose();
    prodiController.dispose();
    kelasController.dispose();
    bioController.dispose();
    emailController.dispose();
    phoneController.dispose();
    githubController.dispose();
    super.dispose();
  }

  void simpan() {
    if (_formKey.currentState!.validate()) {
      Profile dataBaru = Profile(
        name: nameController.text,
        nim: nimController.text,
        prodi: prodiController.text,
        kelas: kelasController.text,
        bio: bioController.text,
        email: emailController.text,
        phone: phoneController.text,
        github: githubController.text,
        imagePath: widget.profile.imagePath,
      );
      Navigator.pop(context, dataBaru);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profil'),
        backgroundColor: Colors.greenAccent,
        foregroundColor: Colors.black,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: nameController,
                decoration: const InputDecoration(
                  labelText: 'Nama Lengkap',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Nama wajib diisi';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 15),
              TextFormField(
                controller: nimController,
                decoration: const InputDecoration(
                  labelText: 'NIM',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.badge),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'NIM wajib diisi';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 15),
              TextFormField(
                controller: prodiController,
                decoration: const InputDecoration(
                  labelText: 'Program Studi',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.school),
                ),
              ),
              const SizedBox(height: 15),
              TextFormField(
                controller: kelasController,
                decoration: const InputDecoration(
                  labelText: 'Kelas',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.group),
                ),
              ),
              const SizedBox(height: 15),
              TextFormField(
                controller: bioController,
                maxLines: 2,
                decoration: const InputDecoration(
                  labelText: 'Bio Singkat',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.info),
                ),
              ),
              const SizedBox(height: 15),
              TextFormField(
                controller: emailController,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Email wajib diisi';
                  }
                  if (!value.contains('@') || !value.contains('.')) {
                    return 'Format email tidak valid';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 15),
              TextFormField(
                controller: phoneController,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  labelText: 'Nomor HP',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.phone),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Nomor HP wajib diisi';
                  }
                  if (int.tryParse(value) == null) {
                    return 'Nomor HP hanya angka';
                  }
                  if (value.length < 10 || value.length > 13) {
                    return 'Nomor HP harus 10-13 digit';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 15),
              TextFormField(
                controller: githubController,
                decoration: const InputDecoration(
                  labelText: 'Akun Github',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.code),
                ),
              ),
              const SizedBox(height: 25),
              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  onPressed: simpan,
                  child: const Text('Simpan', style: TextStyle(fontSize: 16)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
