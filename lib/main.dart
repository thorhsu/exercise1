import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MaterialApp(home: new HomePage()));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List<String> urls = [
      "https://fakeimg.pl/1280x600/",
    ];

    return Scaffold(
        appBar: AppBar(title:
        Text(
          "Flutter Demo Home Page",
          style: TextStyle(fontSize: 19),
        ),
          centerTitle: true,      ),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children:
              List.generate(urls.length, (index) => buildImageView(urls[index]))
        )
    );
  }
  buildImageView(String url, {String title = "點擊享折扣"}) {
    return Container(
      child: AspectRatio(
        aspectRatio: 16/9,
        child:Container(
          padding: EdgeInsets.only(top: 17),
          decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(url), fit: BoxFit.cover)),
          child: Container(
            alignment: Alignment.topLeft,
            child: Text(title ,
              style: TextStyle(
                  color: Colors.white,
                  backgroundColor: Colors.red,
                  fontWeight: FontWeight.w900,
                  fontSize: 17),
            ),
          ),
        ),
      ),
    );
  }
}

class Home2 extends StatelessWidget {
  const Home2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}



