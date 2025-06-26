import 'package:flutter/material.dart';

class ServiceCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const ServiceCard({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 180,
        height: 250,
        decoration: BoxDecoration(
          color: Color(0xFFFBE4E8),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.pink.shade100),
          boxShadow: [
            BoxShadow(
              color: Colors.pink.shade100,
              blurRadius: 6,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 12),
            CircleAvatar(
              child: Icon(icon, color: Colors.pink[300], size: 30),
              radius: 35,
              backgroundColor: Colors.pink[100],
            ),
            SizedBox(height: 12),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black87,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12.0,
                vertical: 8,
              ),
              child: Text(
                description,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12.5, color: Colors.grey[800]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
