import 'package:flutter/cupertino.dart';
import 'login_page.dart';

void main(){
  runApp(const SpotifyLoginApp());
}
class SpotifyLoginApp extends StatelessWidget {
  const SpotifyLoginApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,

      home: LoginPage(),
    );
  }
}
