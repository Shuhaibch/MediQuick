
import 'package:flutter/material.dart';

class SearchBottomSheetWidget extends StatelessWidget {
  const SearchBottomSheetWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Sort Options', style: Theme.of(context).textTheme.titleMedium),
          const SizedBox(height: 10),
          ListTile(title: const Text("Sort by Name"), onTap: () {}),
          ListTile(title: const Text("Sort by Date"), onTap: () {}),
        ],
      ),
    );
  }
}
