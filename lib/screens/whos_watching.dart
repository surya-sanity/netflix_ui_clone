import 'package:flutter/material.dart';
import 'package:netflix_ui_clone/dummy_data.dart';

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
                      return Column(
                        children: [
                          SizedBox(
                            height: 90,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(watchingData[index].image),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            watchingData[index].name,
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          watchingData[index].isLocked
                              ? (const Icon(Icons.lock_outline, size: 13))
                              : const SizedBox()
                        ],
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
