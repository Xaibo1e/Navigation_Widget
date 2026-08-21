import 'package:flutter/material.dart';

class Nvg3 extends StatelessWidget {
  const Nvg3({super.key});

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('หน้าหลัก')),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
             children : [
              const DrawerHeader(decoration: BoxDecoration(color: Colors.pink),
                child: Text('menu',
                  style: TextStyle(
                    color: Colors.white, fontSize: 22)),
                    ),
                    ListTile(
                      leading: const Icon(Icons.home),
                      title: const Text('HomePage'),
                      onTap: () => Navigator.pop(context),
                    ),
                    ListTile(
                      leading: const Icon(Icons.settings),
                      title: const Text('Settings'),
                      onTap: () => Navigator.pop(context),
                    ),
             ]
            ),
          ),
        );
  }
}