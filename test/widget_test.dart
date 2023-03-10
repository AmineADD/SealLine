 import 'package:flutter_test/flutter_test.dart';
import 'package:seal_line/components/home.dart';

 
void main() {
  testWidgets('should pump widget Home', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const Home());
  });
}
