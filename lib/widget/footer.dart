import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(FontAwesomeIcons.twitter),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(FontAwesomeIcons.facebook),
              ),
              IconButton(
                onPressed: () {},
                icon:  const Icon(FontAwesomeIcons.instagram)
                ),
                IconButton(
                onPressed: () {},
                icon:  const Icon(FontAwesomeIcons.github)
                ),
            ],
          ),
          const SizedBox(height: 10),
          const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'COMPANY',
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                ),
                SizedBox(height: 10),
                Text('About'),
                Text('Features'),
                Text('Works'),
                Text('Career'),
              ],
            ),
          ),
          SizedBox(width: 50), 
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end, 
              children: [
                Text(
                  'HELP',
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                ),
                SizedBox(height: 10),
                Text('Customer Support'),
                Text('Delivery Details'),
                Text('Terms & Conditions'),
                Text('Privacy Policy'),
              ],
            ),
          ),
        ],
      ),
      const SizedBox(height: 20),
      const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'FAQ',
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                ),
                SizedBox(height: 10),
                Text('Account'),
                Text('Manage Deliveries'),
                Text('Orders'),
                Text('Payment'),
              ],
            ),
          ),
          SizedBox(width: 50), 
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end, 
              children: [
                Text(
                  'Resources',
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                ),
                SizedBox(height: 10),
                Text('Free eBook'),
                Text('Devevelopment Tutorial'),
                Text('How to - Blog'),
                Text('Youtube Playlist'),
              ],
            ),
          ),
        ],
      ),
      
      const SizedBox(height: 20),
          Center(
            child: Text(
              'Shop.co © 2000 - 2023 All Rights Reserved',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
        ],
      ),
    );
  }
}
