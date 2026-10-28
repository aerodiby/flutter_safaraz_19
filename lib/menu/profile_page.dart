import 'package:flutter/material.dart';
import 'package:flutter_application_1/component/custom_profile_header.dart';
import 'package:flutter_application_1/component/custom_profile_menu_tile.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B141A),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CustomProfileHeader(
              name: 'Safaraz Lasono',
              statusNote: 'hai',
              imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKUkNfKj9CQUQZLaqM_U0UxEK-8MK42SXKg5hPTde4lw&s=10',
            ),

            const SizedBox(height: 24),

            CustomProfileMenuTile(
              icon: Icons.diamond_outlined,
              title: 'Subscriptions',
              subtitle: 'Explore premium benefits',
              onTap: () {
              },
            ),
            CustomProfileMenuTile(
              icon: Icons.devices,
              title: 'Linked devices',
              subtitle: 'Use WhatsApp on other devices',
            ),
            CustomProfileMenuTile(
              icon: Icons.key_outlined,
              title: 'Account',
              subtitle: 'Security notifications, change number',
            ),
            CustomProfileMenuTile(
              icon: Icons.lock_outline,
              title: 'Privacy',
              subtitle: 'Blocked accounts, disappearing messages',
            ),
            CustomProfileMenuTile(
              icon: Icons.perm_contact_calendar_outlined,
              title: 'Lists',
              subtitle: 'Manage people and groups',
            ),
            CustomProfileMenuTile(
              icon: Icons.chat_outlined,
              title: 'Chats',
              subtitle: 'Chat history, backup',
            ),
            
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}