import 'package:flutter/material.dart';
import 'dart:async';
import 'components/contact_doctor_button.dart';
import 'components/medication_table.dart';
import 'components/profile_header.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({super.key});

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      if (mounted) {
        ScaffoldMessenger.of(context).showMaterialBanner(
          MaterialBanner(
            padding: const EdgeInsets.all(20),
            content: const Text(
              'Time to take Pill A!',
              style: TextStyle(fontSize: 35),
            ),
            leading: Icon(Icons.notifications_active, color: Colors.indigoAccent, size: 40),
            backgroundColor: Colors.indigo.shade100,
            actions: [
              TextButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
                },
                child: Text(
                  'Dismiss',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.indigoAccent.shade700,
                  ),
                ),
              ),
            ],
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ProfileHeader(),
              const SizedBox(height: 30),
              Text(
                'Today\'s Medication',
                style: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigoAccent,
                ),
              ),
              const SizedBox(height: 20),
              const Expanded(
                child: MedicationTable(),
              ),
              const SizedBox(height: 30),
              const ContactDoctorButton(),
            ],
          ),
        ),
      ),
    );
  }
}