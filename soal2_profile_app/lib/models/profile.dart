class Profile {
  final String name;
  final String nim;
  final String prodi;
  final String kelas;
  final String bio;
  final String email;
  final String phone;
  final String github;
  final String imagePath;

  const Profile({
    required this.name,
    required this.nim,
    required this.prodi,
    required this.kelas,
    required this.bio,
    required this.email,
    required this.phone,
    required this.github,
    required this.imagePath,
  });

  Profile copyWith({
    String? name,
    String? nim,
    String? prodi,
    String? kelas,
    String? bio,
    String? email,
    String? phone,
    String? github,
    String? imagePath,
  }) {
    return Profile(
      name: name ?? this.name,
      nim: nim ?? this.nim,
      prodi: prodi ?? this.prodi,
      kelas: kelas ?? this.kelas,
      bio: bio ?? this.bio,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      github: github ?? this.github,
      imagePath: imagePath ?? this.imagePath,
    );
  }

  static Profile get initial => const Profile(
        name: 'Ahmad Ilyas',
        nim: '1125170130',
        prodi: 'Teknik Informatika',
        kelas: 'TI25KS',
        bio:
            'Mahasiswa Teknik Informatika yang antusias dalam eksplorasi Flutter, pengembangan aplikasi mobile, dan desain visual.',
        email: 'Kcelyaz@gmail.com',
        phone: '085731936284',
        github: 'elyazz10',
        imagePath: 'assets/images/profile.png',
      );
}

