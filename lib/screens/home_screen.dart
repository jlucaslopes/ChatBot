import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/widgets/recent_chats.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Center( child: Text(
          'BOT',
          style: TextStyle(
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
          ),
        )),
        elevation: 0.0,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: Column(
                children: <Widget>[
                  imagemLogo,
                  RecentChats(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

final imagemLogo = Column(
  children: <Widget>[
    CircleAvatar(
      backgroundColor: Colors.transparent,

      radius: 90.0,
      backgroundImage:
          AssetImage('assets/images/noun_Baby_671337.png'),
    ),
    SizedBox(height: 6.0),
    Text( 'ROBOT FIAP',
      style: TextStyle(
        color: Colors.blueGrey,
        fontSize: 16.0,
        fontWeight: FontWeight.w600,
      ),
    )
  ],
);


}
