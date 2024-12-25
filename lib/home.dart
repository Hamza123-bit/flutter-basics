import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      ///
      /// Drawer
      ///
      drawer: Drawer(
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(top: 40.0),
          child: Column(
            children: [
              const CircleAvatar(
                radius: 65,
                backgroundColor: Color.fromARGB(255, 31, 220, 17),
                child: CircleAvatar(
                  radius: 62,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 60,
                    backgroundColor: Color.fromARGB(255, 42, 162, 206),
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 60,
                    ),
                  ),
                ),
              ),
              Container(
                height: 122,
                width: 123,
                decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                    border: Border.all(width: 2, color: Colors.black),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.25),
                        offset: Offset(0, 4),
                        spreadRadius: 1,
                        blurRadius: 4,
                      )
                    ]),
                child: Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      shape: BoxShape.circle,
                      border: Border.all(width: 2, color: Colors.white)),
                  child: const Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 60,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Hamza jamil",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              const Text(
                "hamza335590@gmail.com",
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
      ),

      ///
      /// App Bar
      ///
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text(
          "App Bar",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {},
          ),
        ],
      ),

      ///
      /// Body
      ///
      body: SingleChildScrollView(
        child: ListView(
          shrinkWrap: true,
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [_container(), _container()],
            ),
            Row(
              children: [_container(), _container()],
            ),
            Row(
              children: [_container(), _container()],
            ),
            Row(
              children: [_container(), _container()],
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.message),
      ),
    );
  }
}

_container() {
  return Expanded(
    child: Container(
      margin: EdgeInsets.all(10),
      height: 200,
      width: 200,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(34),

          // border: Border.all(width: 2, color: Colors.black),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              offset: Offset(1, 3),
              spreadRadius: 1,
              blurRadius: 6,
            )
          ]),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            Icons.account_circle,
            size: 60,
          ),
          Text("Hamza jamil"),
        ],
      ),
    ),
  );
}