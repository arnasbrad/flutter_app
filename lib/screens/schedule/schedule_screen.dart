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
            leading: const Icon(Icons.notifications_active, color: Colors.blue, size: 40),
            backgroundColor: Colors.blue.shade50,
            actions: [
              TextButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
                },
                child: const Text('Dismiss', style: TextStyle(fontSize: 30),),
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
            children: [
              const ProfileHeader(),
              const SizedBox(height: 30),
              const ContactDoctorButton(),
              const SizedBox(height: 30),
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