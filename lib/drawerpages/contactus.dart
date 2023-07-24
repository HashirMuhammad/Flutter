import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    const String address =
        '1 - KM, Defence Rd, near Bhubattian, howk, Lahore, Punjab, Pakistan';
    const String phoneNumber1 = '+92 3154026203';
    const String phoneNumber2 = '+92 3240049330';
    const String email1 = 'hashirmuhammad73@gmail.com';
    const String email2 = 'umerarhad11157@gmail.com';
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/started.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent.shade200,
          title: const Text("Contact Us"),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 1,
              ),
              const Text(
                'Address:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(address),
              const SizedBox(height: 20),
              const Text(
                'Phone Number:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                
              ),
              const SizedBox(height: 8),
              GestureDetector(
                
                onTap: () =>
                    _launchURL('tel:$phoneNumber1' 'tel : $phoneNumber2'),
                child: Text(
                  phoneNumber1,
                  semanticsLabel: phoneNumber2,
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Colors.deepPurpleAccent.shade200,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Email:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              GestureDetector(
                onTap: () => _launchURL('mailto:$email1' 'milto: $email2'),
                child: const Text(
                  email1,
                  semanticsLabel: email2,
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Colors.deepPurpleAccent,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Social Media:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  GestureDetector(
                    onTap: () => _launchURL('https://www.facebook.com/'),
                    child: const Icon(Icons.facebook, color: Colors.deepPurpleAccent),
                  ),
                  const SizedBox(width: 8),
                  GestureDetector(
                    onTap: () => _launchURL('https://www.twitter.com/'),
                    child: const Icon(
                      FontAwesomeIcons.twitter,
                      color: Colors.deepPurpleAccent,
                    ),
                  ),
                  const SizedBox(width: 8),
                  GestureDetector(
                    onTap: () => _launchURL('https://www.instagram.com/'),
                    child: const Icon(FontAwesomeIcons.instagram,
                        color: Colors.deepPurpleAccent),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                'Location:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Container(
                height: 250,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/Capture.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

void _launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
