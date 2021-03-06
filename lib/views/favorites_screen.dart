import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:news_app_extended/views/local_news.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _richTextController(context);
  }
}

Widget _richTextController(BuildContext context) => Container(
      color: Colors.black12,
      padding: const EdgeInsets.all(10),
      child: Center(
        child: RichText(
          text: TextSpan(
            text: 'This News App is inspired by the principle of free'
                ' Journalism. You can select ',
            style: const TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            children: [
              TextSpan(
                text: 'Local',
                style: const TextStyle(
                  color: Colors.deepOrange,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.of(context).pushNamed(LocalNews.routeName);
                  },
              ),
              const TextSpan(
                text: ' to ',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: 'Global,',
                style: const TextStyle(
                  color: Colors.deepOrange,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    //
                  },
              ),
              const TextSpan(
                text: ' news, and not only that, you can take part as a'
                    ' Citizen Journalist to publish your story.',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ),
    );


/*

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
*/