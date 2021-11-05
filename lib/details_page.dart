// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

import 'book_model.dart';
import 'home_page.dart';

class Detail extends StatefulWidget {
  final AlbumModel albumModel;
  const Detail(this.albumModel);
  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          actions: const [
            Icon(
              Icons.save,
              color: Colors.black,
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.more_vert_sharp,
              color: Colors.black,
            ),
          ],
          leading: GestureDetector(
            child: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            ),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const MyHomePage(),
                ),
              );
            },
          ),
          elevation: 0,
          backgroundColor: Colors.deepOrange[50],
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Stack(children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                  color: Colors.deepOrange[50]),
              height: MediaQuery.of(context).size.height * 0.6,
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 8.0, left: 120, bottom: 10, right: 120),
                child: Column(
                  children: [
                    Image(
                      image: AssetImage(widget.albumModel.imgPath),
                      fit: BoxFit.fitHeight,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      widget.albumModel.name,
                      style: const TextStyle(
                          fontWeight: FontWeight.w900, fontSize: 25),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      widget.albumModel.artist,
                      style: const TextStyle(
                          fontWeight: FontWeight.w400, fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.indigo[900],
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.indigo[900],
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.indigo[900],
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.indigo[900],
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.indigo[900],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 480, left: 30),
              child: Text(
                'Description',
                style:
                    const TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 500, left: 30),
              child: Text(
                widget.albumModel.decs,
                style:
                    const TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 610, left: 30, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                      onPressed: () {},
                      style:
                          TextButton.styleFrom(backgroundColor: Colors.white),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.menu_open_sharp,
                            color: Colors.black,
                          ),
                          Text(
                            "Preview",
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      )),
                  ElevatedButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(backgroundColor: Colors.white),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.message_sharp,
                          color: Colors.black,
                        ),
                        Text(
                          "Reviews",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 660, left: 120),
              child: ElevatedButton(
                  onPressed: () {},
                  style:
                      TextButton.styleFrom(backgroundColor: Colors.indigo[900]),
                  child: Text("Buy now for \$29.67")),
            )
          ]),
        ));
  }
}
