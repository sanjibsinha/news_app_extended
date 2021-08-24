import 'package:flutter/material.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _textController();
  }
}

Widget _textController() => Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Hello Favorites',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
                color: Colors.greenAccent,
                decorationColor: Colors.red,
                decorationStyle: TextDecorationStyle.wavy,
                letterSpacing: 5.0,
                wordSpacing: 10.0,
                shadows: [
                  Shadow(
                    color: Colors.black,
                    blurRadius: 2.0,
                    offset: Offset(5, 1),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'More Style',
              style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.normal,
                  foreground: Paint()
                    ..color = Colors.red
                    ..strokeWidth = 2.0
                    ..style = PaintingStyle.stroke),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'I am going to write some gibberish! What does that mean? Actually nothing! '
              'Now you may ask should an adjective always align with the noun? Or, an '
              'adverb should follow a verb like its shadow?',
              style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.normal,
                  foreground: Paint()
                    ..color = Colors.blue
                    ..strokeWidth = 1.0
                    ..style = PaintingStyle.stroke),
              textAlign: TextAlign.left,
              maxLines: 2,
              // it means some more text are there waiting for you to be read
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
