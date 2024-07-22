import 'package:adhd_writing_app/text_input.dart';
import 'package:flutter/material.dart';

class Interface extends StatefulWidget {
  const Interface({super.key});

  @override
  State<Interface> createState() => _InterfaceState();
}

class _InterfaceState extends State<Interface> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // TODO(kkhhaaooss): implement circular timer widget
            Text(
              'Timer',
              style: Theme.of(context).textTheme.bodyMedium,
            ),

            // TODO(kkhhaaooss): implement last entered paragraph widget
            const Text(
              'Last paragraph entered',
              style: TextStyle(
                color: Colors.black,
              ),
            ),

            // TODO(kkhhaaooss): implement text input box
            const TextInput(),

            // TODO(kkhhaaooss): implement pause/resume writing button
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Pause/Resume Writing Button',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),

            // TODO(kkhhaaooss): implement progress bar
            const Text(
              'Progress Bar',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
