import 'package:flutter/material.dart';
import 'package:netflix_ui_clone/dummy_data.dart';
import 'package:netflix_ui_clone/screens/home_screen.dart';
import 'package:netflix_ui_clone/widgets/whos_watching_card.dart';
import 'package:netflix_ui_clone/widgets/whos_watching_pin_modal.dart';

class WhosWatching extends StatelessWidget {
  const WhosWatching({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/images/netflix-logo.png',
          height: 80,
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => {}, icon: const Icon(Icons.edit))
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: SizedBox(
              width: double.infinity,
              child: ListView(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  const Text(
                    "Who's Watching?",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.symmetric(horizontal: 75),
                    shrinkWrap: true,
                    itemCount: watchingData.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.9,
                      mainAxisSpacing: 20,
                    ),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          if (watchingData[index].pin != null) {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return WhosWatchingPinModal(
                                    pin: watchingData[index].pin!);
                              },
                            );
                          } else {
                          
                          }
                        },
                        child: WhosWatchingCard(
                          index: index,
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
