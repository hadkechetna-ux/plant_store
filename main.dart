import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: PlantDetailPage(),
    debugShowCheckedModeBanner: false,
  ));
}

class PlantDetailPage extends StatelessWidget {
  final Color darkGreen = Color(0xFF264E36);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEFF2E8),
      body: SafeArea(
        child: Column(
          children: [
            // Header and Image
            Container(
              margin: EdgeInsets.all(16),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.arrow_back),
                      Icon(Icons.shopping_cart, color: darkGreen),
                    ],
                  ),
                  SizedBox(height: 16),
                  Text("Peace Lily", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
                  SizedBox(height: 8),
                  Image.asset("assets/peace_lily.png", height: 180),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildTextInfo("Type", "Small"),
                      buildTextInfo("Category", "Indoor Plant"),
                      buildTextInfo("Price", "\$40.00"),
                    ],
                  ),
                ],
              ),
            ),

            // Plant Info Boxes
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildInfoBox("Light", "37%", Icons.lightbulb_outline, Colors.pink.shade100),
                  buildInfoBox("Water", "2L", Icons.water_drop_outlined, Colors.blue.shade100),
                  buildInfoBox("Temp", "25℃", Icons.thermostat_outlined, Colors.green.shade100),
                ],
              ),
            ),
            SizedBox(height: 16),

            // About Plant Section
            Expanded(
              child: Container(
                margin: EdgeInsets.all(16),
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("About Peace Lily", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                    SizedBox(height: 8),
                    Text(
                      "The peace lily plant is well known for its air-purifying abilities as a houseplant. "
                      "It’s great at breaking down and neutralizing toxic gases like carbon... ",
                      style: TextStyle(color: Colors.grey.shade700),
                    ),
                    Spacer(),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: FloatingActionButton(
                        backgroundColor: darkGreen,
                        onPressed: () {},
                        child: Icon(Icons.add),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTextInfo(String title, String value) {
    return Column(
      children: [
        Text(title, style: TextStyle(color: Colors.grey)),
        SizedBox(height: 4),
        Text(value, style: TextStyle(fontWeight: FontWeight.bold)),
      ],
    );
  }

  Widget buildInfoBox(String title, String value, IconData icon, Color bgColor) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Icon(icon, size: 28),
          SizedBox(height: 4),
          Text(value, style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 2),
          Text(title, style: TextStyle(fontSize: 12)),
        ],
      ),
    );
  }
}
