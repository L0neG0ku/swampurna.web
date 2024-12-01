// navbar.dart
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFB3E5FC), // Light blue color
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildNavLink('Home'),
          _buildNavLink('About Us'),
          _buildNavLink('Our Work'),
          _buildNavLink('Resources'),
          _buildNavLink('Get Involved'),
          _buildNavLink('News & Updates'),
        ],
      ),
    );
  }

  // Helper function to build navigation links
  Widget _buildNavLink(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: TextButton(
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(
            color: Colors.blue[900],
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
