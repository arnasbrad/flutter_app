import 'package:flutter/material.dart';

class MedicationTable extends StatefulWidget {
  const MedicationTable({super.key});

  @override
  State<MedicationTable> createState() => _MedicationTableState();
}

class _MedicationTableState extends State<MedicationTable> {
  final List<Map<String, dynamic>> _medications = [
    {'name': 'Pill A', 'time': '9:00', 'taken': false},
    {'name': 'Pill B', 'time': '11:00', 'taken': false},
    {'name': 'Pill C', 'time': '12:00', 'taken': false},
  ];

  void _toggleMedication(int index) {
    setState(() {
      _medications[index]['taken'] = !_medications[index]['taken'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Header
        Container(
          decoration: BoxDecoration(
            color: Colors.indigo.shade100,
            border: Border.all(color: Colors.indigo.shade200),
          ),
          child: Row(
            children: const [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Medication',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Time',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 60), // Space for checkmark column
            ],
          ),
        ),
        // Table rows
        Expanded(
          child: ListView.builder(
            itemCount: _medications.length,
            itemBuilder: (context, index) {
              final medication = _medications[index];
              return GestureDetector(
                onTap: () => _toggleMedication(index),
                child: Container(
                  decoration: BoxDecoration(
                    color: medication['taken'] == true
                        ? Colors.green.shade100
                        : Colors.indigo.shade50,
                    border: Border.all(color: Colors.indigo.shade200),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            medication['name'] as String,
                            style: const TextStyle(fontSize: 35),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            medication['time'] as String,
                            style: const TextStyle(fontSize: 35),
                          ),
                        ),
                      ),
                      // Checkmark icon
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: SizedBox(
                          width: 60,
                          child: medication['taken'] == true
                              ? const Icon(
                            Icons.check_circle,
                            color: Colors.green,
                            size: 40,
                          )
                              : null,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}