// main.dart
import 'package:flutter/material.dart';
import 'nav_bar.dart'; // Import the navigation bar component
import 'carousel.dart'; // Import the carousel component
// Import the ProfileSection

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false, // Disable the debug banner
    );
  }
}
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120.0),
        child: Column(
          children: [
            // Title bar with "SWAMPURNA" and "Hackathon"
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'SWAMPURNA',
                    style: TextStyle(
                      color: Colors.blue[900], // Dark blue color
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  DropdownButton<String>(
                    value: 'Hackathon',
                    items: <String>['Hackathon', 'Event 1', 'Event 2'].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (newValue) {},
                    iconEnabledColor: Colors.blue[900],
                    underline: SizedBox(),
                    style: TextStyle(
                      color: Colors.blue[900],
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            // Navigation Bar
            NavBar(), // Use the NavBar component
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                // Left-side placeholder for the image
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 400,
                    color: Colors.grey[300], // Placeholder for image
                    child: Center(
                      child: Text(
                        'Image Placeholder',
                        style: TextStyle(fontSize: 18, color: Colors.black54),
                      ),
                    ),
                  ),
                ),

                SizedBox(width: 16.0), // Space between image and carousel

                // Right-side for Carousel
                Expanded(
                  flex: 1,
                  child: CarouselSliderComponent(), // Use the CarouselSliderComponent
                ),
              ],
            ),
          ),

          SizedBox(height: 16.0), // Space between carousel and new section

          // Add the Dr. Suparna section here
          newMethod(),
        ],
      ),
    );
  }

  Expanded newMethod() {
    return Expanded(
          flex: 0,
          child: _buildProfileSection(), // Reference the _buildProfileSection function
        );
  }

  // The function that builds the profile section
  Widget _buildProfileSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blue, width: 1.5),
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
                    image: AssetImage('assets/profile_image.jpg'),
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
}


