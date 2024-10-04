import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    //var arrtext = ["ADD TO CART", "FAVOURITE ITEMS", "SIGN OUT", "REVIEW APP"];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Center(
            child: Text(
              'CLASSY CLOSET',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 88,
                margin: EdgeInsets.only(bottom: 10),
                color: Colors.blueGrey,
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 65,
                          width: 150,
                          child: Image.asset('assets/images/image9.png'),
                        ),
                        Text("Profile"),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'Hi...Feddy',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 29),
                        ),
                        Text(
                          'How you doin?',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 21),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                  height: 30,
                  margin: EdgeInsets.only(bottom: 10),
                  color: Colors.blueGrey,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/search.png"),
                      Center(
                          child: InkWell(
                        child: Text(
                          "SEARCH",
                          style: TextStyle(
                              fontSize: 21, fontWeight: FontWeight.w300),
                        ),
                        onTap: () {
                          print("Search any style you want");
                        },
                      )),
                    ],
                  )),
              Container(
                height: 285,
                margin: EdgeInsets.only(bottom: 10),
                color: Colors.blueGrey,
                child: Column(
                  children: [
                    Center(
                      child: Container(
                          height: 35,
                          //margin: EdgeInsets.only(bottom: 10),
                          color: Colors.blueGrey,
                          child: Text("BEST DEALS!!!",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 30))),
                    ),
                    Container(
                      height: 250,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: InkWell(
                                child: Image.asset('assets/images/image8.png'),
                                onTap: () {
                                  print('NEW FASHION DEAL UNLOCKED');
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: InkWell(
                                child: Image.asset('assets/images/image7.png'),
                                onTap: () {
                                  print("LADIES FASHION");
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Image.asset('assets/images/image6.png'),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Image.asset('assets/images/image5.png'),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Image.asset('assets/images/image4.png'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 285,
                margin: EdgeInsets.only(bottom: 10),
                color: Colors.blueGrey,
                child: Column(
                  children: [
                    Center(
                      child: Container(
                          height: 35,
                          //margin: EdgeInsets.only(bottom: 10),
                          color: Colors.blueGrey,
                          child: Text("GIFT OFFERS!!!",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 30))),
                    ),
                    Container(
                      height: 250,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: InkWell(
                                child: Image.asset('assets/images/image00.png'),
                                onTap: () {
                                  print('NEW FASHION DEAL UNLOCKED');
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: InkWell(
                                child: Image.asset('assets/images/image2.png'),
                                onTap: () {
                                  print("LADIES FASHION");
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Image.asset('assets/images/image1.png'),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Image.asset('assets/images/image0.png'),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Image.asset('assets/images/image3.png'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // unused as only listview can be used alone
              /*ListView.separated(
                itemBuilder: (context, index) {
                  return Container(
                    height: 50,
                    margin: EdgeInsets.only(bottom: 10),
                    color: Colors.blueGrey,
                    child: Center(
                      child: Text(
                        arrtext[index],
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.w600),
                      ),
                    ),
                  );
                },
                itemCount: arrtext.length,
                separatorBuilder: (context, index) {
                  return Divider(
                    height: 90,
                    thickness: 4,
                  );
                },
              )*/
              Container(
                height: 50,
                margin: EdgeInsets.only(bottom: 10),
                color: Colors.blueGrey,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Center(
                      child: Text(
                        'ADD TO CART',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w600),
                      ),
                    ),
                    InkWell(
                      child: Image.asset('assets/images/cart.png'),
                      onTap: () {
                        print("ITEM SUCCESSFILLY ADDED TO CART");
                      },
                    )
                  ],
                ),
              ),
              Container(
                height: 50,
                margin: EdgeInsets.only(bottom: 10),
                color: Colors.blueGrey,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Center(
                      child: Text(
                        'FAVOURITE ITEMS',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w600),
                      ),
                    ),
                    InkWell(
                      child: Image.asset('assets/images/favourite.png'),
                      onTap: () {
                        print("YOUR FAVOURITE ITEMS ARE LISTED BELOW");
                      },
                    )
                  ],
                ),
              ),
              Container(
                height: 50,
                margin: EdgeInsets.only(bottom: 10),
                color: Colors.blueGrey,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Center(
                      child: Text(
                        'SIGN OUT',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w600),
                      ),
                    ),
                    InkWell(
                      child: Image.asset('assets/images/signout2.png'),
                      onTap: () {
                        print('YOU HAVE SUCESSFULLY SIGNED OUT');
                      },
                    )
                  ],
                ),
              ),
              Container(
                height: 50,
                margin: EdgeInsets.only(bottom: 10),
                color: Colors.blueGrey,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Center(
                      child: Text(
                        'REVIEW APP',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w600),
                      ),
                    ),
                    InkWell(
                      child: Image.asset('assets/images/review.png'),
                      onTap: () {
                        print("YOUR REVIEW IS ESSENTIAL FOR US");
                      },
                    )
                  ],
                ),
              ),
              Container(
                height: 50,
                //color: Colors.blueGrey,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset("assets/images/home.png"),
                    Image.asset("assets/images/notification.png"),
                    Image.asset("assets/images/message.png"),
                    Image.asset("assets/images/menu.png"),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
