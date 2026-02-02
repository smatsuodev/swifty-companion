import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';

final theme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: Color.fromARGB(0xFF, 0x00, 0xBA, 0xBC),
  ),
);

final darkTheme = ThemeData.dark().copyWith(
  colorScheme: ColorScheme.fromSeed(
    seedColor: Color.fromARGB(0xFF, 0x00, 0xBA, 0xBC),
    brightness: Brightness.dark,
  ),
);

PreviewThemeData previewTheme() {
  return PreviewThemeData(materialLight: theme, materialDark: darkTheme);
}

@Preview(name: 'Theme Preview', theme: previewTheme)
Widget themePreview() {
  return Scaffold(
    appBar: AppBar(title: const Text('Theme Preview')),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {},
            child: const Text('Elevated Button'),
          ),
          TextButton(onPressed: () {}, child: const Text('Text Button')),
          OutlinedButton(
            onPressed: () {},
            child: const Text('Outlined Button'),
          ),
        ],
      ),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () {},
      child: const Icon(Icons.add),
    ),
  );
}
