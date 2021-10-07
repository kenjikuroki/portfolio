import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:provider/provider.dart';

class SliverAppBarPage extends StatefulWidget {
  const SliverAppBarPage({Key? key}) : super(key: key);

  @override
  _SliverAppBarPageState createState() => _SliverAppBarPageState();
}

class _SliverAppBarPageState extends State<SliverAppBarPage> {
  @override
  Widget build(BuildContext context) {
    var descTextStyle = TextStyle(
      fontWeight: FontWeight.w800,
      fontFamily: 'Roboto',
      fontSize: 15.0,
    );

    var titleTextStyle = TextStyle(
      fontWeight: FontWeight.w800,
      fontFamily: 'Pacifico',
      fontSize: 40.0,
    );

    return Scaffold(
      body: ConstrainedBox(
        constraints: BoxConstraints(minWidth: 1300, minHeight: 430),
        child: CustomScrollView(slivers: [
          SliverAppBar(
            backgroundColor: Colors.greenAccent.withOpacity(0.3),
            floating: true,
            pinned: true,
            snap: false,
            expandedHeight: 100,
            toolbarHeight: 60,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'PortFolio',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  color: Colors.white,
                  fontSize: 30.0,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              background: Stack(children: [
                Container(
                  width: double.infinity,
                  child: Image(
                      image: AssetImage(
                        'images/Tokyo.jpeg',
                      ),
                      fit: BoxFit.cover),
                ),
                BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
                  child: Container(color: Colors.black.withOpacity(0)),
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: FractionalOffset.topCenter,
                        end: FractionalOffset.bottomCenter,
                        stops: [
                          0.5,
                          1
                        ],
                        colors: [
                          Colors.teal.withOpacity(0),
                          Colors.black38,
                        ]),
                  ),
                ),
              ]),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(<Widget>[
              Center(

                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: 1200,
                  ),
                  child: Container(
                    margin: EdgeInsets.all(7.0),
                    padding: EdgeInsets.all(7.0),
                    decoration: BoxDecoration(color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(8.0),),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, right: 20.0, bottom: 20.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            ////profile/////////////////////////////////////
                            SizedBox(
                              height: 50.0,
                            ),
                            Center(
                              child: Column(children: [
                                Text(
                                  'Profile',
                                  style: titleTextStyle,
                                ),
                                SizedBox(
                                  height: 40.0,
                                  width: 170,
                                  child: Divider(
                                    thickness: 2.0,
                                    height: 40.0,
                                  ),
                                ),
                                SizedBox(
                                  height: 15.0,
                                ),
                              ]),
                            ),
                            LayoutBuilder(builder: (context, constraints) {
                              if (constraints.maxWidth < 600) {
                                return Column(
                                  children: [
                                    Container(
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(15.0),
                                            child: CircleAvatar(
                                              radius: 50.0,
                                              backgroundImage:
                                                  AssetImage('images/cat.png'),
                                              backgroundColor: Colors.grey,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(15.0),
                                            child: Text(
                                              '苗字　名前\nアプリ開発',
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'Source Sans Pro',
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Text(
                                      'テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト',
                                      style: descTextStyle,
                                    ),
                                  ],
                                );
                              } else {
                                return Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Column(
                                        children: [
                                          CircleAvatar(
                                            radius: 50.0,
                                            backgroundImage:
                                                AssetImage('images/cat.png'),
                                            backgroundColor: Colors.grey,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(15.0),
                                            child: Text(
                                              '苗字　名前\nアプリ開発',
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'Source Sans Pro',
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: Text(
                                          'テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト',
                                          style: descTextStyle,
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              }
                            }),

                            /////////Skill///////
                            SizedBox(
                              height: 90.0,
                            ),
                            Center(
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    'Skill',
                                    style: titleTextStyle,
                                  ),
                                  SizedBox(
                                    height: 40.0,
                                    width: 120,
                                    child: Divider(
                                      thickness: 2.0,
                                      height: 40.0,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30.0,
                                  ),
                                  LayoutBuilder(
                                      builder: (context, constraints) {
                                    if (constraints.maxWidth < 600) {
                                      return Column(children: [
                                        Container(
                                          width: double.infinity,
                                          child: Text(
                                            '・Flutter\nテキストテキストテキストテキストテキストテキストテキストテキスト',
                                            style: descTextStyle,
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                        Container(
                                          width: double.infinity,
                                          child: Text(
                                            '・Flutter\nテキストテキストテキストテキストテキストテキストテキストテキスト',
                                            style: descTextStyle,
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                        Container(
                                          width: double.infinity,
                                          child: Text(
                                            '・Flutter\nテキストテキストテキストテキストテキストテキストテキストテキスト',
                                            style: descTextStyle,
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                        Container(
                                          width: double.infinity,
                                          child: Text(
                                            '・Flutter\nテキストテキストテキストテキストテキストテキストテキストテキスト',
                                            style: descTextStyle,
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                      ]);
                                    } else {
                                      return Expanded(
                                        child: Row(children: [
                                          Expanded(
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(15.0),
                                              child: Text(
                                                '・Flutter\nテキストテキストテキストテキストテキストテキストテキストテキスト',
                                                style: descTextStyle,
                                                textAlign: TextAlign.left,
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(15.0),
                                              child: Text(
                                                '・Flutter\nテキストテキストテキストテキストテキストテキストテキストテキスト',
                                                style: descTextStyle,
                                                textAlign: TextAlign.left,
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(15.0),
                                              child: Text(
                                                '・Flutter\nテキストテキストテキストテキストテキストテキストテキストテキスト',
                                                style: descTextStyle,
                                                textAlign: TextAlign.left,
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(15.0),
                                              child: Text(
                                                '・Flutter\nテキストテキストテキストテキストテキストテキストテキストテキスト',
                                                style: descTextStyle,
                                                textAlign: TextAlign.left,
                                              ),
                                            ),
                                          ),
                                        ]),
                                      );
                                    }
                                  }),
                                ],
                              ),
                            ),
                            //////////Works/////////
                            SizedBox(
                              height: 90.0,
                            ),
                            Column(
                              children: [
                                Text(
                                  'Works',
                                  style: titleTextStyle,
                                ),
                                SizedBox(
                                  height: 40.0,
                                  width: 170,
                                  child: Divider(
                                    thickness: 2.0,
                                    height: 40.0,
                                  ),
                                ),
                                SizedBox(
                                  height: 40.0,
                                ),
                                Row(
                                  children: [
                                    SizedBox(width: 7),
                                    Expanded(
                                      flex: 1,
                                      child: Column(
                                        children: [
                                          Container(
                                            width: 100,
                                            color: Colors.grey.shade300,
                                            child: Text(
                                                'Expanded\n\n\n\n\n(flex:1)'),
                                          ),
                                          Text(
                                            'テキストテキストテキストテキストテキスト',
                                            style: descTextStyle,
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 7),
                                    Expanded(
                                      flex: 1,
                                      child: Column(
                                        children: [
                                          Container(
                                            width: 100,
                                            color: Colors.grey.shade300,
                                            child: Text(
                                                'Expanded\n\n\n\n\n(flex:1)'),
                                          ),
                                          Text(
                                            'テキストテキストテキストテキストテキスト',
                                            style: descTextStyle,
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 7),
                                    Expanded(
                                      flex: 1,
                                      child: Column(
                                        children: [
                                          Container(
                                            width: 100,
                                            color: Colors.grey.shade300,
                                            child: Text(
                                                'Expanded\n\n\n\n\n(flex:1)'),
                                          ),
                                          Text(
                                            'テキストテキストテキストテキストテキスト',
                                            style: descTextStyle,
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 7),
                                  ],
                                ),
                              ],
                            ),
                            /////////contact///////
                            SizedBox(
                              height: 90.0,
                            ),
                            Column(
                              children: [
                                Text(
                                  'Contact',
                                  style: titleTextStyle,
                                ),
                                SizedBox(
                                  height: 40.0,
                                  width: 170,
                                  child: Divider(
                                    thickness: 2.0,
                                    height: 40.0,
                                  ),
                                ),
                                SizedBox(
                                  height: 40.0,
                                ),
                                Text(
                                  'テキストテキストテキストテキストテキストテキストテキスト',
                                  style: descTextStyle,
                                ),
                                Row(
                                  children: [
                                    Spacer(
                                      flex: 1,
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: IconButton(
                                          iconSize: 50,
                                          // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                                          icon:
                                              FaIcon(FontAwesomeIcons.twitter),
                                          onPressed: () {
                                            print("Pressed");
                                          }),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: IconButton(
                                          iconSize: 50,
                                          // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                                          icon: FaIcon(FontAwesomeIcons.github),
                                          onPressed: () {
                                            print("Pressed");
                                          }),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: IconButton(
                                          iconSize: 50,
                                          // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                                          icon: FaIcon(FontAwesomeIcons.bomb),
                                          onPressed: () {
                                            print("Pressed");
                                          }),
                                    ),
                                    Spacer(
                                      flex: 1,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 90,
                            ),
                          ]),
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ]),
      ),
    );
  }
}
