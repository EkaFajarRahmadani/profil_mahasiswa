import 'package:flutter/material.dart';

import '../widgets/action_buttons.dart';
import '../widgets/profile_info.dart';
import '../widgets/profile_header.dart';
import '../widgets/socialmedia_row.dart';
import 'about_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  void _openAboutScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const AboutScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 24),
              const ProfileHeader(
                name: 'Eka Fajar Rahmadani',
                nim: '25.11.6339',
              ),
              const SizedBox(height: 24),
              const ProfileInfo(
                programStudi: 'S1 Informatika',
                email: 'e.fajar@students.amikom.ac.id',
                lokasi: 'Yogyakarta, Indonesia',
              ),
              const SizedBox(height: 20),
              const SocialMediaRow(),
              const SizedBox(height: 24),
              ActionButtons(
                onEdit: () {},
                onShare: () {},
                onAbout: () => _openAboutScreen(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
