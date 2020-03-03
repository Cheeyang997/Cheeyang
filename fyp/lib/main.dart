import 'package:flutter/material.dart';
import './home.dart';
import './person.dart';
import './History.dart';
import './More.dart';
import './AddDes.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp>
{
  int _selectedPage = 0;
  final _pageOptions = [
    HomePage(),
    PersonPage(),
    HistoryPage(),
    MorePage(),
  ];
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      title: 'FYP',
      home:Scaffold(
        appBar: AppBar(
        title: Text('Final Year'),
      ),
        body: _pageOptions[_selectedPage],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _selectedPage,
            type: BottomNavigationBarType.fixed,
            iconSize: 30,

          onTap: (index)
          {
          setState(() {
          _selectedPage = index;
          });
          }, //onTap on the Nav bar

            items: [
            BottomNavigationBarItem(
            icon:new Icon(Icons.home),
            title:new Text('Home'),
            ),
            BottomNavigationBarItem(
            icon:new Icon(Icons.person),
            title:new Text('Profile'),
            ),
            BottomNavigationBarItem(
            icon: new Icon(Icons.history),
          title: new Text('History'),
          ),
          BottomNavigationBarItem(
          icon: new Icon(Icons.more_horiz),
          title: new Text('More'),
              )
            ],
  ),

        floatingActionButton: FloatingActionButton(
          onPressed: ()
          {
            Navigator.push(context, new MaterialPageRoute(
                builder: (context)=>AddDestinationPage()
                )
              );
            },
          child:Icon(Icons.add),
          ),
        )
      );
  }
}

