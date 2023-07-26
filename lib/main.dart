import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(body: Home()),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final controller = OverlayPortalController();

  @override
  Widget build(BuildContext context) {
    return OverlayPortal.targetsRootOverlay(
      controller: controller,
      overlayChildBuilder: (context) {
        return ColoredBox(
          color: Colors.purple,
          child: Center(
            child: ElevatedButton(
              onPressed: controller.hide,
              child: const Text('Hide'),
            ),
          ),
        );
      },
      child: Center(
        child: ElevatedButton(
          onPressed: controller.show,
          child: const Text('Show'),
        ),
      ),
    );
  }
}
