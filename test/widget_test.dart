import 'package:flutter_test/flutter_test.dart';

import 'package:profil_mahasiswa/main.dart';

void main() {
  testWidgets('Profile app shows profile and about screen', (tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Profil Mahasiswa'), findsOneWidget);
    expect(find.text('Eka Fajar Rahmadani'), findsOneWidget);
    expect(find.text('Tentang Aplikasi'), findsOneWidget);

    await tester.tap(find.text('Tentang Aplikasi'));
    await tester.pumpAndSettle();

    expect(find.text('Tentang Aplikasi'), findsWidgets);
  });
}
