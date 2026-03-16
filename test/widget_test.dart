import 'package:flutter_test/flutter_test.dart';
import 'package:nice_colors/main.dart';

void main() {
  testWidgets('Displays hello there', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Hello there'), findsOneWidget);
  });
}
