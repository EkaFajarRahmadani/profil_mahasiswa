import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaRow extends StatelessWidget {
  const SocialMediaRow({super.key});

  Future<void> _openProfile(BuildContext context, String url) async {
    final Uri uri = Uri.parse(url);

    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Tidak dapat membuka link')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final mediaItems = <Map<String, dynamic>>[
      {
        'name': 'Instagram',
        'icon': Icons.camera_alt_rounded,
        'url': 'https://www.instagram.com/ekantod.co.id/',
      },
      {
        'name': 'LinkedIn',
        'icon': Icons.business_center_rounded,
        'url': 'https://www.linkedin.com/in/eka-fajar-rahmadani-b92b24442/?isSelfProfile=false',
      },
      {
        'name': 'GitHub',
        'icon': Icons.code_rounded,
        'url': 'https://github.com/EkaFajarRahmadani/',
      },
    ];

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: mediaItems.map((item) {
        final mediaName = item['name'] as String;
        final icon = item['icon'] as IconData;
        final url = item['url'] as String;

        return IconButton(
          onPressed: () => _openProfile(context, url),
          tooltip: mediaName,
          icon: Icon(icon, size: 32, color: Colors.blue),
        );
      }).toList(),
    );
  }
}
