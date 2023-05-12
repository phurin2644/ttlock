import 'package:flutter/material.dart';
import 'package:ttlock/choose_lock.dart';

class AddDevice extends StatefulWidget {
  const AddDevice({super.key});

  @override
  State<AddDevice> createState() => _AddDeviceState();
}

class _AddDeviceState extends State<AddDevice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 0, 122, 255),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            size: 28,
            color: Colors.white,
            weight: 500,
          ),
        ),
        title: const Center(
          child: Text(
            'TTLock',
            style: TextStyle(color: Colors.white),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              size: 28,
              color: Colors.white,
              weight: 500,
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 90),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ChooseLock()),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 10,
                        color: Colors.black54.withOpacity(0.08),
                        spreadRadius: 0.001)
                  ],
                ),
                child: CircleAvatar(
                  radius: 65,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.add,
                    size: 50,
                    color: Colors.black54.withOpacity(0.08),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 50),
            Text(
              'The Phone needs to be within 2 meters of the Smart Lock',
              style: TextStyle(
                color: Colors.black54.withOpacity(0.4),
              ),
            ),
            Text('during the Pairing process.',style: TextStyle(
                color: Colors.black54.withOpacity(0.4),
              ),),
          ],
        ),
      ),
    );
  }
}
