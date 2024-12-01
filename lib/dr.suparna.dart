import 'package:flutter/material.dart';
// Add this section below your existing sections in the `body`.
// ignore: unused_element
Widget _buildProfileSection() {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 16.0), // Add some spacing
    child: Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue, width: 1.5), // Blue border
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        children: [
          // Left side: Image
          Expanded(
            flex: 1,
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/profile_image.jpg'), // Replace with your image
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8.0),
                  bottomLeft: Radius.circular(8.0),
                ),
              ),
            ),
          ),
          // Right side: Text
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Dr. Suparna Dutta (Associate Professor)',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[900],
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'P.I. of Swampurna Project',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'Dr. Suparna Dutta is an Associate Professor at Birla Institute of Technology (BIT), Noida Campus. She holds a significant academic and research background in the field of science and technology, with a focus on communication and participatory learning approaches for sustainable development. Dr. Dutta has been actively involved in research projects that integrate state-of-the-art tools and emerging technologies to address social issues, particularly related to health and hygiene management.',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
