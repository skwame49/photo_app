import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Photo App',
      home: HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(75),
          child: Text(
            'Xperience Photography In A New Dimension',
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontFamily: "FloralsBright",
            ),
          ),
        ),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
                "https://images.unsplash.com/photo-1527203561188-dae1bc1a417f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mzh8fHdvbWFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff077398),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return ListViews();
              },
            ),
          );
        },
        child: Icon(Icons.keyboard_arrow_right),
      ),
    );
  }
}

class ListViews extends StatelessWidget {
  const ListViews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          iconTheme: const IconThemeData(
              color: Colors
                  .black), //This command changes the icon themes of your icons in your app bar. Especially, when the app bar is white.
          backgroundColor: Colors.amber[200],
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              CircleAvatar(
                backgroundImage: AssetImage("image/pin.jpg"),
              ),
              Icon(Icons.menu),
            ],
          ),),
      body: ListView(
        padding: const EdgeInsets.all(25),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Explore",
                style: TextStyle(fontSize: 25),
              ),
              Icon(Icons.keyboard_arrow_right)
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Card(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color: const Color(0xffECF0F4),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(
                      20), //Border Radius curves the edges of the images.
                  child: Image.asset(
                    'image/paint.jpg',
                    height: 250,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment
                        .start, //Moves text to the left corner
                    children: [
                      Text("Wall Grafiti"),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: const [
                              CircleAvatar(
                                backgroundImage: AssetImage("image/pin.jpg"),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text("A. Robertson"),
                            ],
                          ),
                          const Icon(
                            Icons.bookmark,
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Card(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color: const Color(0xffECF0F4),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(
                      20), //Border Radius curves the edges of the images.
                  child: Image.asset(
                    'image/cam.jpg',
                    height: 250,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment
                        .start, //Moves text to the left corner
                    children: [
                      Text("Wall Grafiti"),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: const [
                              CircleAvatar(
                                backgroundImage: AssetImage("image/pin.jpg"),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text("C. Jones"),
                            ],
                          ),
                          const Icon(
                            Icons.bookmark,
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Card(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color: const Color(0xffECF0F4),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(
                      20), //Border Radius curves the edges of the images.
                  child: Image.asset(
                    'image/spi.jpg',
                    height: 250,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment
                        .start, //Moves text to the left corner
                    children: [
                      Text("Wall Grafiti"),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: const [
                              CircleAvatar(
                                backgroundImage: AssetImage("image/pin.jpg"),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text("A. Becker"),
                            ],
                          ),
                          const Icon(
                            Icons.bookmark,
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Card(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color: const Color(0xffECF0F4),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(
                      20), //Border Radius curves the edges of the images.
                  child: Image.asset(
                    'image/ah.jpg',
                    height: 250,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment
                        .start, //Moves text to the left corner
                    children: [
                      Text("Wall Grafiti"),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: const [
                              CircleAvatar(
                                backgroundImage: AssetImage("image/pin.jpg"),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text("J. Henderson"),
                            ],
                          ),
                          const Icon(
                            Icons.bookmark,
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.menu),label: "Menu"),
          BottomNavigationBarItem(icon: Icon(Icons.add),label: "Add"),
        ],
      ),
    );
  }
}
