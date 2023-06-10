import 'package:flutter/material.dart';
import 'package:netflix_ui_clone/screens/home_screen.dart';

class WhosWatchingPinModal extends StatefulWidget {
  const WhosWatchingPinModal({Key? key, required this.pin}) : super(key: key);

  final num pin;

  @override
  State<WhosWatchingPinModal> createState() => _WhosWatchingPinModalState();
}

class _WhosWatchingPinModalState extends State<WhosWatchingPinModal> {
  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (context, setState) {
        return Align(
          child: Container(
            margin: const EdgeInsets.only(bottom: 50),
            padding: const EdgeInsets.all(15),
            height: 190,
            width: 300,
            decoration: BoxDecoration(
                color: Colors.grey.shade900,
                borderRadius: BorderRadius.circular(10)),
            child: Material(
              color: Colors.transparent,
              child: Column(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        const Text(
                          'Enter your PIN to access this profile.',
                          style: TextStyle(fontSize: 14, color: Colors.white70),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: 40,
                          child: TextField(
                            maxLength: 4,
                            autofocus: true,
                            maxLines: 1,
                            keyboardType: TextInputType.number,
                            obscureText: true,
                            buildCounter: (context,
                                {required currentLength,
                                required isFocused,
                                maxLength}) {
                              return const SizedBox();
                            },
                            onChanged: (value) {
                              if (value.isNotEmpty &&
                                  (int.parse(value)) == widget.pin) {
                                Navigator.pop(context);
                                Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                    pageBuilder: (context, __, ___) =>
                                        const HomeScreen(),
                                    transitionDuration:
                                        const Duration(seconds: 0),
                                  ),
                                );
                              }
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          'Forgot PIN?',
                          style: TextStyle(
                              fontSize: 13,
                              decoration: TextDecoration.underline,
                              color: Colors.white70),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: InkWell(
                      onTap: () => Navigator.pop(context),
                      child: const Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Text(
                          'Cancel',
                          style: TextStyle(fontSize: 13, color: Colors.white70),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
