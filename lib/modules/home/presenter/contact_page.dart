import 'package:chateo/shared/widgets/inputs/input_widget.dart';
import 'package:chateo/shared/widgets/tiles/tiles_widget.dart';
import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({ Key? key }) : super(key: key);

  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {

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
            status: 'Last seen yesterday',
          ),
          new TileWidget(
            personName: 'Erlan Sadewa',
            status: 'Online',
          ),
          new TileWidget(
            personName: 'Midala Huera',
            status: 'Last seen 3 hours ago',
          ),
          new TileWidget(
            personName: 'Nafisa Gitari',
            status: 'Online',
          ),
          new TileWidget(
            personName: 'Raki Devon',
            status: 'Online',
          ),
          new TileWidget(
            personName: 'Salsabila Akira',
            status: 'Last seen 30 minutes ago',
          ),
        ],
      ),
    );
  }
}