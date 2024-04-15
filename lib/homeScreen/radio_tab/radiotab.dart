import 'package:flutter/material.dart';
import 'package:islami_app/providers/radioProvider.dart';
import 'package:provider/provider.dart';

class RadioTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => RadioProvider()..getRadio(),
      builder: (context, child) {
        var provider = Provider.of<RadioProvider>(context, listen: false);
        return Container(
          child: Consumer<RadioProvider>(
            builder: (BuildContext context, RadioProvider radioProvider,
                Widget? child) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Image.asset("assests/images/img_18.png"),
                  if (provider.radios.isNotEmpty)
                    Selector<RadioProvider, int>(
                      builder: (BuildContext context, value, Widget? child) {
                        return InkWell(
                          onTap: () {
                            provider.playNext();
                          },
                          child: Text(radioProvider.radios[value].name ?? "",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 30)),
                        );
                      },
                      selector: (p0, p1) {
                        return p1.index;
                      },
                    ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () async {
                          await radioProvider.pauseAudio();
                          // await radioProvider.playAudio();
                          radioProvider.playPrevious();
                        },
                        icon: Icon(
                          Icons.skip_previous,
                          size: 50,
                        ),
                        color: Color.fromRGBO(250, 204, 29, 1),
                      ),
                      IconButton(
                        onPressed: () async {
                          await radioProvider.pauseAudio();
                        },
                        icon: Icon(
                          Icons.play_arrow,
                          size: 50,
                        ),
                        color: Color.fromRGBO(250, 204, 29, 1),
                      ),
                      IconButton(
                        onPressed: () async {
                          await radioProvider.playAudio();
                        },
                        icon: Icon(
                          Icons.pause,
                          size: 50,
                        ),
                        color: Color.fromRGBO(250, 204, 29, 1),
                      ),
                      IconButton(
                        onPressed: () async {
                          await radioProvider.pauseAudio();
                          // await radioProvider.pauseAudio();
                          radioProvider.playNext();
                        },
                        icon: Icon(
                          Icons.skip_next,
                          size: 50,
                        ),
                        color: Color.fromRGBO(250, 204, 29, 1),
                      ),
                    ],
                  ),
                ],
              );
            },
          ),
        );
      },
    );
  }
}
