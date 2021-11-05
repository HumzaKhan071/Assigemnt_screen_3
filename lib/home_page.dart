import 'package:flutter/material.dart';

import 'book_model.dart';
import 'details_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

List<AlbumModel> shoeList = AlbumModel.list;

class _MyHomePageState extends State<MyHomePage> {
  final Color c = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          Icon(
            Icons.search,
            color: c,
          )
        ],
        leading: Icon(
          Icons.menu,
          color: c,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20, left: 20),
            child: const Text(
              "Popular Now",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
            ),
          ),
          card(),
          Positioned(
            bottom: 260,
            child: Container(
              margin: const EdgeInsets.only(top: 20, left: 20),
              child: const Text(
                "Bestsellers",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 280.0),
            child: card(),
          )
        ],
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              spreadRadius: 1,
              blurRadius: 10,
            )
          ],
        ),
        child: BottomNavigationBar(
          currentIndex: 0,
          selectedItemColor: Colors.indigo[900],
          unselectedItemColor: Colors.black26,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          items: [
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                  icon: Icon(Icons.home_filled),
                  onPressed: () {},
                ),
              ),
              label: "data",
            ),
            BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(icon: Icon(Icons.save), onPressed: () {}),
                ),
                label: "data"),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                  icon: Icon(Icons.shopping_bag_outlined),
                  onPressed: () {},
                ),
              ),
              label: "data",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.graphic_eq_rounded), label: "data"),
          ],
        ),
      ),
    );
  }

  ListView card() {
    return ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: shoeList.length,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemBuilder: (BuildContext context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => Detail(
                    shoeList[index],
                  ),
                ),
              );
            },
            child: Popular(shoeList[index].name, shoeList[index].artist,
                shoeList[index].imgPath, c),
          );
        });
  }
}

class Popular extends StatelessWidget {
  final String name;
  final String brand;
  final String imgPath;

  final Color grey;

  const Popular(this.name, this.brand, this.imgPath, this.grey);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 150,
          width: 120,
          margin: const EdgeInsets.only(top: 70, left: 20),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(120)),
          child: Image(
            image: AssetImage(imgPath),
            width: 120,
            height: 150,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 10),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 25),
            ),
            Text(
              brand,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 20,
                color: grey,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
