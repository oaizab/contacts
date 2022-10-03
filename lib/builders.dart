import 'package:flutter/material.dart';

Widget buildCallButton() {
  return Column(
    children: [
      IconButton(
        icon: const Icon(
          Icons.call,
        ),
        onPressed: () {},
      ),
      const Text('Call'),
    ],
  );
}

Widget buildTextButton() {
  return Column(
    children: [
      IconButton(
        icon: const Icon(
          Icons.message,
        ),
        onPressed: () {},
      ),
      const Text('Text'),
    ],
  );
}

Widget buildVideoCallButton() {
  return Column(
    children: [
      IconButton(
        icon: const Icon(
          Icons.video_call,
        ),
        onPressed: () {},
      ),
      const Text('Video'),
    ],
  );
}

Widget buildEmailButton() {
  return Column(
    children: [
      IconButton(
        icon: const Icon(
          Icons.email,
        ),
        onPressed: () {},
      ),
      const Text('Email'),
    ],
  );
}

Widget buildDirectionsButton() {
  return Column(
    children: [
      IconButton(
        icon: const Icon(
          Icons.directions,
        ),
        onPressed: () {},
      ),
      const Text('Directions'),
    ],
  );
}

Widget buildPayButton() {
  return Column(
    children: [
      IconButton(
        icon: const Icon(
          Icons.attach_money,
        ),
        onPressed: () {},
      ),
      const Text('Pay'),
    ],
  );
}

Widget mobilePhoneListTile() {
  return ListTile(
    leading: const Icon(
      Icons.call,
      color: Colors.grey,
    ),
    title: const Text("330-803-3390"),
    subtitle: const Text('mobile'),
    trailing: IconButton(
      icon: const Icon(
        Icons.message,
      ),
      //color: Colors.indigo[500],
      onPressed: () {},
    ),
  );
}

Widget otherPhoneListTile() {
  return ListTile(
    leading: const Text(''),
    title: const Text("440-440-3390"),
    subtitle: const Text('other'),
    trailing: IconButton(
      icon: const Icon(
        Icons.message,
      ),
      //color: Colors.indigo[500],
      onPressed: () {},
    ),
  );
}

Widget emailListTile() {
  return const ListTile(
    leading: Icon(
      Icons.email,
      color: Colors.grey,
    ),
    title: Text('omaraizab@email.com'),
    subtitle: Text('work'),
  );
}

Widget addressListTile() {
  return ListTile(
    leading: const Icon(
      Icons.location_on,
      color: Colors.grey,
    ),
    title: const Text('234 Sunset St, Burlingame'),
    subtitle: const Text('home'),
    trailing: IconButton(
      icon: const Icon(
        Icons.directions,
      ),
      //color: Colors.indigo[500],
      onPressed: () {},
    ),
  );
}
