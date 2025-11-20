import 'package:flutter/material.dart';

class Seatingpage extends StatefulWidget {
  const Seatingpage({super.key});

  @override
  State<Seatingpage> createState() => _SeatingpageState();
}

class _SeatingpageState extends State<Seatingpage> {
  double lightValue = 0.5;
  String currentLang = "English";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff2f5f9),

      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text(
          "Settings",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [
            /// Light Control
            _settingsCard(
              icon: Icons.light_mode_outlined,
              title: "Light Control",
              subtitle: "Adjust brightness level",
              onTap: () {
                showDialog(
                  context: context,
                  builder:
                      (_) => AlertDialog(
                        title: const Text("Light Control"),
                        content: StatefulBuilder(
                          builder: (context, setState2) {
                            return Slider(
                              value: lightValue,
                              min: 0,
                              max: 1,
                              onChanged: (value) {
                                setState2(() => lightValue = value);
                                setState(() {});
                              },
                            );
                          },
                        ),
                      ),
                );
              },
            ),

            const SizedBox(height: 15),

            /// Language
            _settingsCard(
              icon: Icons.language,
              title: "Language",
              subtitle: "Current: $currentLang",
              onTap: () {
                setState(() {
                  currentLang = currentLang == "English" ? "Arabic" : "English";
                });
              },
            ),

            const SizedBox(height: 15),

            /// Visa Entry
            _settingsCard(
              icon: Icons.credit_card,
              title: "Visa Information",
              subtitle: "Enter your card details",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const VisaPage()),
                );
              },
            ),

            const SizedBox(height: 15),

            /// Customer Service
            _settingsCard(
              icon: Icons.support_agent,
              title: "Customer Service",
              subtitle: "Contact support team",
              onTap: () {
                showDialog(
                  context: context,
                  builder:
                      (_) => const AlertDialog(
                        title: Text("Customer Service"),
                        content: Text(
                          "Phone: +1 800 123 4567\nEmail: support@example.com",
                        ),
                      ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  /// Card Widget
  Widget _settingsCard({
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,

      child: Container(
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 8,
              offset: const Offset(2, 3),
            ),
          ],
        ),

        child: Row(
          children: [
            Icon(icon, size: 32, color: Colors.blueAccent),

            const SizedBox(width: 15),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  subtitle,
                  style: TextStyle(fontSize: 13, color: Colors.grey[700]),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

/// Visa Page
class VisaPage extends StatelessWidget {
  const VisaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Visa Information"),
        backgroundColor: Colors.blueAccent,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: const [
            TextField(
              decoration: InputDecoration(
                labelText: "Card Number",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 15),
            TextField(
              decoration: InputDecoration(
                labelText: "Card Holder Name",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 15),
            TextField(
              decoration: InputDecoration(
                labelText: "Expiration Date",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 15),
            TextField(
              decoration: InputDecoration(
                labelText: "CVV",
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
