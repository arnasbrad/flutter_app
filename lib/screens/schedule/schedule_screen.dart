import 'package:flutter/material.dart';
import 'components/contact_doctor_button.dart';
import 'components/medication_table.dart';
import 'components/profile_header.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const ProfileHeader(),
              const SizedBox(height: 16),
              const ContactDoctorButton(),
              const SizedBox(height: 16),
              const Expanded(
                child: MedicationTable(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}