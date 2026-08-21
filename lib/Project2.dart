import 'package:flutter/material.dart';

final List<String> cities = ['กรุงเทพฯ', 'เชียงใหม่', 'ขอนแก่น', 'ภูเก็ต'];

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _city = 'ยังไม่เลือก';

  Future<void> _pick() async {
    final result = await Navigator.push<String>(
      context,
      MaterialPageRoute(builder: (_) => const CityPage()),
    );
    if (result != null && mounted) {
      setState(() => _city = result);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('หน้าหลัก')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('เมืองที่เลือก: $_city', style: const TextStyle(fontSize: 22)),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _pick, 
              child: const Text('ไปเลือกเมือง'),
            ),
          ],
        ),
      ),
    );
  }
}

class CityPage extends StatelessWidget {
  const CityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('รายการเมือง')),
      body: ListView(
        children: cities
            .map((c) => ListTile(
                  title: Text(c),
                  onTap: () => Navigator.pop(context, c),
                ))
            .toList(),
      ),
    );
  }
}