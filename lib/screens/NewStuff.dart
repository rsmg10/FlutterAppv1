import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:messengerclone/models/SelectionMenu.dart';

class NewStuff extends StatefulWidget {
  const NewStuff({Key? key}) : super(key: key);

  @override
  State<NewStuff> createState() => _NewStuffState();
}

class _NewStuffState extends State<NewStuff> {
  TextEditingController numController = TextEditingController();
String sortBy = "SoryBy";
void sortedSelection(SelectionMenu value){
  setState(()=>{
    sortBy = value.Title
  });
}
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final TextStyle textStyle = theme.textTheme.bodyMedium!;
    final List<Widget> aboutBoxChildren = <Widget>[
      const SizedBox(height: 24),
      RichText(
        text: TextSpan(
          children: <TextSpan>[
            TextSpan(
                style: textStyle,
                text: "Flutter is Google's UI toolkit for building beautiful, "
                    'natively compiled applications for mobile, web, and desktop '
                    'from a single codebase. Learn more about Flutter at '),
            TextSpan(
                style: textStyle.copyWith(color: theme.colorScheme.primary),
                text: 'https://flutter.dev'),
            TextSpan(style: textStyle, text: '.'),
          ],
        ),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.call),
          ),
        ],
        // leading: Icon(FontAwesomeIcons.icons),
        title: const Text('Show About Example'),
      ),
      endDrawer: Drawer(
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                AboutListTile(
                  icon: const Icon(Icons.info),
                  applicationIcon: const FlutterLogo(),
                  applicationName: 'Show About Example',
                  applicationVersion: 'August 2019',
                  applicationLegalese: '\u{a9} 2014 The Flutter Authors',
                  aboutBoxChildren: aboutBoxChildren,
                ),
              ],
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.search, size: 30),
              ),
              SizedBox(child: Text(sortBy), width: 100, ),
              Container(
                alignment: Alignment.centerRight,
                child: PopupMenuButton<SelectionMenu>(
                  position: PopupMenuPosition.over,
                  tooltip: "sortby",
                  iconSize: 35,
                  icon: Icon(Icons.sort),
                  onSelected: (value) => {

                    sortedSelection(value)
                  },
                  itemBuilder: (context) => <PopupMenuEntry<SelectionMenu>>[
                    PopupMenuItem(
                      child: Text("Date"),
                      value: SelectionMenu<SortBy>("Date", SortBy.date)
                    ),
                    PopupMenuItem(
                        child: Text("Ascending"),
                        value: SelectionMenu<SortBy>("Ascending", SortBy.asceding)
                    ),                    PopupMenuItem(
                        child: Text("Descending"),
                        value: SelectionMenu<SortBy>("descending", SortBy.descending)
                    ),                    PopupMenuItem(
                        child: Text("alphabetically"),
                        value: SelectionMenu<SortBy>("alphabetically", SortBy.alphabetically)
                    ),
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 50,
              itemBuilder: (BuildContext context, int index) {
              return    ListTile(
                title: Text("$index--tracsaction"),
                subtitle: Text("sdsd"),
                trailing: Icon(Icons.more_vert),
                leading: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.grey,
                  ),
                ),
              );
            },
            ),
          ),
        ],
      ),
    );
  }
}
