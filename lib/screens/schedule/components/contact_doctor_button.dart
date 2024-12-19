import 'package:flutter/material.dart';

import '../../doctor/doctor_info_screen.dart';

class ContactDoctorButton extends StatelessWidget {
  const ContactDoctorButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const DoctorInfoScreen(),
          ),
        );
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: Colors.indigo.shade100,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.medical_services, color: Colors.indigoAccent, size: 50),
            const SizedBox(width: 8),
            Text(
              'Contact Doctor',
              style: TextStyle(
                color: Colors.indigoAccent,
                fontSize: 50,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}