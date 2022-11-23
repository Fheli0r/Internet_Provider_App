import 'package:flutter/material.dart';

Widget buildProfileImage() => CircleAvatar(
      radius: 160 / 1,
      backgroundColor: Colors.grey.shade800,
      backgroundImage: AssetImage('assets/imgs/client.jpg'),
    );
