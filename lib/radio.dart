import 'package:flutter/material.dart';

class Radioo extends StatefulWidget {
  const Radioo({Key? key}) : super(key: key);

  @override
  State<Radioo> createState() => _RadiooState();
}

class _RadiooState extends State<Radioo> {
  int selectedValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Radio And RadioListTile Widget"),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 20),
        children: [
          RadioListTile<int>(
              value: 0,
              groupValue: selectedValue,
              title: const Text("Johns"),
              subtitle: const Text("Freelancer, Flutter Developer"),
              secondary: OutlinedButton(
                  onPressed: () {
                    const snackBar =
                        SnackBar(content: Text("Profile Of: Johns"));

                    Scaffold.of(context).showSnackBar(snackBar);
                  },
                  child: const Text("View Profile")),
              onChanged: (value) {
                setState(() {
                  selectedValue = 0;
                });
              }),
          RadioListTile<int>(
              value: 1,
              groupValue: selectedValue,
              title: const Text("Charles"),
              subtitle: const Text("Freelancer, Amazon Expert"),
              secondary: OutlinedButton(
                  onPressed: () {
                    const snackBar =
                        SnackBar(content: Text("Profile Of: Charles"));

                    Scaffold.of(context).showSnackBar(snackBar);
                  },
                  child: const Text("View Profile")),
              onChanged: (value) {
                setState(() {
                  selectedValue = 1;
                });
              }),
          RadioListTile<int>(
              value: 2,
              groupValue: selectedValue,
              title: const Text("Mike"),
              subtitle: const Text("Freelancer, Video Editor"),
              secondary: OutlinedButton(
                  onPressed: () {
                    const snackBar =
                        SnackBar(content: Text("Profile Of: Mike"));

                    Scaffold.of(context).showSnackBar(snackBar);
                  },
                  child: const Text("View Profile")),
              onChanged: (value) {
                setState(() {
                  selectedValue = 2;
                });
              }),
        ],
      ),
    );
  }
}
