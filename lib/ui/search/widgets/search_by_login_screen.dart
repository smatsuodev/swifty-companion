import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SearchByLoginScreen extends HookConsumerWidget {
  const SearchByLoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final login = useState('');

    return Scaffold(
      appBar: AppBar(title: const Text('Search By Login')),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: const InputDecoration(labelText: 'Enter login'),
                onChanged: (value) => login.value = value,
              ),
              FilledButton(onPressed: () {}, child: const Text('Search')),
            ],
          ),
        ),
      ),
    );
  }
}
