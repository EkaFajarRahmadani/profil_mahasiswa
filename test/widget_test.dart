import 'package:flutter_test/flutter_test.dart';

import 'package:profil_mahasiswa/main.dart';

void main() {
  testWidgets('Profile app shows profile and about screen', (tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Profil Mahasiswa'), findsOneWidget);
    expect(find.text('Eka Fajar Rahmadani'), findsOneWidget);
    expect(find.text('Tentang Aplikasi'), findsOneWidget);

    final aboutButton = find.text('Tentang Aplikasi').last;
    await tester.ensureVisible(aboutButton);
    await tester.pumpAndSettle();
    await tester.tap(aboutButton);
    await tester.pumpAndSettle();

    expect(find.text('Tentang Aplikasi'), findsWidgets);
  });
}
