import 'package:flutter/material.dart';

class Nvg4 extends StatelessWidget{
  const Nvg4({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
      appBar: AppBar(
        title: const Text('กล่องข้อความ'),
        bottom : const TabBar(
          tabs: [
            Tab(text: 'ทั้งหมด'),
            Tab(text: 'รออ่าน'),
            Tab(text: 'สำคัญ'),
          ],
        ),
      ),
      body : const TabBarView(
        children: [
          Center(child: Text('ทั้งหมด')),
          Center(child: Text('รออ่าน')),
          Center(child: Text('สำคัญ')),
          ],
        ),
      ),
    );
  }
}

