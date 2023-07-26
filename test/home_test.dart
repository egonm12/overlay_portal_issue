import 'package:flutter_test/flutter_test.dart';
import 'package:overlay_portal_issue/main.dart';

void main() {
  group(Home, () {
    testWidgets(
      'can show and hide the overlay',
      (tester) async {
        await tester.pumpWidget(const MainApp());

        await tester.tap(find.text('Show'));

        await tester.pump();

        expect(
          find.text('Hide').hitTestable(),
          findsOneWidget,
        );

        await tester.tap(find.text('Hide'));
      },
    );
  });
}
