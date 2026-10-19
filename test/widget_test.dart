import 'package:flutter_test/flutter_test.dart';
import 'package:mini_katalog/app.dart';

void main() {
  testWidgets('Ana sayfa aciliyor', (WidgetTester tester) async {
    await tester.pumpWidget(const MiniKatalogApp());
    expect(find.text('Mini Katalog'), findsOneWidget);
    expect(find.text('Kataloğa Git'), findsOneWidget);
  });
}
