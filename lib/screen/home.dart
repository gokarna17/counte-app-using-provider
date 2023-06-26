import 'package:counter_app/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var counterNotifier = Provider.of<Counter>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text("StateManagement using Provider"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<Counter>(builder: (context, notifier, child) {
            return const Center(
              child: Text(
                'Score is',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
              ),
            );
          }),
          Consumer<Counter>(builder: (context, notifier, child) {
            return Center(
              child: Text(
                '${counterNotifier.num}',
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
              ),
            );
          }),
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: () {
              counterNotifier.increament();
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            width: 50,
          ),
          FloatingActionButton(
            onPressed: () {
              counterNotifier.decrament();
            },
            child: const Icon(Icons.remove),
          ),
          const SizedBox(
            width: 50,
          ),
          FloatingActionButton(
            backgroundColor: Colors.purple,
            onPressed: () {
              counterNotifier.reset();
            },
            child: const Icon(Icons.restore),
          ),
        ],
      ),
    );
  }
}
