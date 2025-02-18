import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1A1A2E), // Deep Winter Background
      appBar: AppBar(
        title: Text("About Us",
            style: GoogleFonts.playfairDisplay(fontWeight: FontWeight.bold)),
        backgroundColor: Color(0xFF16213E), // Deep Blue
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // โลโก้ร้าน
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage("assets/logo.png"), // ใส่โลโก้ร้าน
                backgroundColor: Colors.transparent,
              ),
              SizedBox(height: 20),

              // ชื่อร้าน
              Text(
                "Glamora",
                style: GoogleFonts.playfairDisplay(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFE94560), // Deep Red
                ),
              ),
              SizedBox(height: 10),

              // คำอธิบายเกี่ยวกับร้าน
              Text(
                "Glamora เป็นร้านเครื่องสำอางที่คัดสรรผลิตภัณฑ์คุณภาพสูง "
                    "เหมาะกับทุกสภาพผิว ให้คุณมั่นใจในความสวยหรูระดับพรีเมียม",
                textAlign: TextAlign.center,
                style: GoogleFonts.lora(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 30),

              // Social Media Links
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildSocialButton(Icons.facebook, "Facebook"),
                  SizedBox(width: 15),
                  _buildSocialButton(Icons.camera_alt, "Instagram"),
                  SizedBox(width: 15),
                  _buildSocialButton(Icons.email, "Contact Us"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget ปุ่ม Social Media
  Widget _buildSocialButton(IconData icon, String label) {
    return ElevatedButton.icon(
      onPressed: () {},
      icon: Icon(icon, color: Colors.white),
      label: Text(label),
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFF53354A), // Deep Purple
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
