// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:lab03_042/main.dart';

void main() {
  testWidgets('shows participation summary and details on tap', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    expect(
      find.text('กิจกรรมที่ลงทะเบียนทั้งหมด: 5 รายการ'),
      findsOneWidget,
    );
    expect(find.text('Leadership Camp 2025'), findsOneWidget);

    await tester.tap(find.text('Leadership Camp 2025'));
    await tester.pump();

    expect(
      find.text(
        'Leadership Camp 2025\nรายละเอียด: ค่ายพัฒนาศักยภาพความเป็นผู้นำนิสิต',
      ),
      findsOneWidget,
    );
  });
}
