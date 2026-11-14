import 'package:flutter_test/flutter_test.dart';
import 'package:soal2_profile_app/main.dart';

void main() {
  testWidgets('App renders login screen smoke test',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Login Mahasiswa'), findsOneWidget);
    expect(find.text('Selamat Datang'), findsOneWidget);
  });
}
