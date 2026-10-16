import 'package:flutter_test/flutter_test.dart';
import 'package:kartu_nama/main.dart';

void main() {
  testWidgets('Cek tampilan Kartu Nama Digital', (WidgetTester tester) async {
    // Jalankan aplikasi
    await tester.pumpWidget(const DigitalBusinessCardApp());

    // Memastikan teks 'Kabayan' muncul di layar
    expect(find.text('Kabayan'), findsOneWidget);
  });
}