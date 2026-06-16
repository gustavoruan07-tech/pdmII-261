import 'package:flutter/material.dart';
import '../models/models.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
    required this.currentUser,
  });

  final User currentUser;

  @override
  Widget build(BuildContext context) {
    final ColorScheme _colorScheme = Theme.of(context).colorScheme;
    
    return Container(
      decoration: BoxDecoration(
        color: _colorScheme.surface,
        borderRadius: BorderRadius.circular(30),
      ),
      child: const TextField(
        decoration: InputDecoration(
          hintText: 'Search messages...',
          prefixIcon: Icon(Icons.search),
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(vertical: 12),
        ),
      ),
    );
  }
}