
import 'package:flutter/material.dart';

class ApplicationSearchWidget extends StatelessWidget {
  final TextEditingController _searchController = TextEditingController();
  final Function(String) onSearch;

  ApplicationSearchWidget({super.key, required this.onSearch});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: TextField(
        controller: _searchController,
        decoration: InputDecoration(
          hintText: "Search for job",
          prefixIcon: Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(color: Colors.grey.shade400),
          ),
        ),
        onChanged: onSearch,
      ),
    );
  }
}
