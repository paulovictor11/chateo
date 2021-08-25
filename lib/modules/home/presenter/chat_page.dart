import 'package:chateo/shared/widgets/inputs/input_widget.dart';
import 'package:chateo/shared/widgets/tiles/tiles_widget.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({ Key? key }) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {

  final _search = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 24
      ),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          new InputWidget(
            label: 'Search...',
            keyboardType: TextInputType.text,
            controller: _search,
            icon: new Icon(
              Icons.search_rounded
            ),
          ),
          new SizedBox(height: 8),
          new TileWidget(
            personName: 'Athalia Putri',
            status: 'Good morning, did you sleep well?',
            date: 'Today',
            totalMessagesNotRead: '1',
          ),
          new TileWidget(
            personName: 'Raki Devon',
            status: 'How is it going?',
            date: '17/6',
          ),
          new TileWidget(
            personName: 'Erlan Sadewa',
            status: 'Alright, noted',
            date: '17/6',
            totalMessagesNotRead: '1',
          ),
        ],
      ),
    );
  }
}