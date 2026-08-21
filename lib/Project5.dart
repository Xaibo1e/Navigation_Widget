import 'package:flutter/material.dart';

class Nvg5 extends StatelessWidget {
  const Nvg5({super.key});

  @override
  Widget build(BuildContext context) {
   return PopScope(
    canPop: false,
    onPopInvokedWithResult: (didPop, result) async {
      if (didPop) return;
      final leave = await showDialog<bool>(
        context: context,
        builder: (dialogContext) => AlertDialog(
          title: const Text('ทิ้งการแก้ไข?'),
          actions: [
            TextButton(
              onPressed: () =>
                Navigator.pop(context, false), 
                child: const Text('อยู่ต่อ'),
                ),
            ElevatedButton(
              onPressed: () =>
                Navigator.pop(context, false), 
                child: const Text('ออก'),
                ),
          ],
        ),
      );
      if (leave == true && context.mounted) {
        Navigator.pop(context);
      }
    },
    child: Scaffold(
        appBar: AppBar(title: const Text('ฟอร์มแก้ไขข้อมูล')),
        body: Center(
          child: ElevatedButton(
            onPressed: () => Navigator.maybePop(context),
            child: const Text('กดย้อนกลับ (ทดสอบ PopScope)'),
          ),
        ),
      ),
    );
  }
}