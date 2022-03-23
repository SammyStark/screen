import 'package:flutter/material.dart';

class Blog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                automaticallyImplyLeading: true,
                backgroundColor: Colors.red,
                collapsedHeight: 120,
                expandedHeight: 360,
                floating: true,
                snap: true,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 15, bottom: 14),
                                child: Text(
                                  'Color in UI design\nA piece of Art',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 17),
                                ),
                              ),
                            ]),
                        // ignore: avoid_unnecessary_containers
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 12, right: 5),
                              child: CircleAvatar(
                                backgroundImage: null,
                                radius: 15,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 7),
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(bottom: 3),
                                    child: Text(
                                      'Pritom Tawsif',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 10),
                                    ),
                                  ),
                                  Text(
                                    '11 Jan 2022',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 8),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 2),
                              child: Icon(
                                Icons.timelapse,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 14),
                              child: Text(
                                '10 Min',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 13),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 11),
                              child: Icon(
                                Icons.share,
                                color: Colors.white,
                              ),
                            ),
                            Icon(
                              Icons.bookmark,
                              color: Colors.white,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  background: Column(
                    //fit: StackFit.expand,
                    children: [
                      Image.asset(
                        'assets/p1.jpg',
                        fit: BoxFit.cover,
                        height: 360,
                        width: double.infinity,
                      ),
                    ],
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  return Container(
                    color: Colors.greenAccent,
                    child: const Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, \n when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. \n It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker \n including versions of Lorem Ipsum.\nWhy do we use it?\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for lorem ipsum will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).',
                      style: TextStyle(fontSize: 15),
                    ),
                    height: 600,
                    //margin: const EdgeInsets.all(4),
                  );
                }, childCount: 3),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
