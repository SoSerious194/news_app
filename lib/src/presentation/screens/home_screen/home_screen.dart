import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:date_format/date_format.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mobilefirst/src/core/extensions/string_extensions.dart';
import 'package:shimmer/shimmer.dart';

import '../../../infrastructure/data_sources/remote_data_sources.dart';
import '../../common/error/error_screen.dart';
import '../bookmark_screen/bookmark_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
    required this.name,
  }) : super(key: key);
  final String name;

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  late List bookmarks;
  Map result = {};

  late int currentSlectedTab;
  // User? userData;
  // late String name;
  ScrollController _scrollController = ScrollController();
  late int selectedTab;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    currentSlectedTab = 1;
    selectedTab = 0;
    // setState(() {
    //   name = userData!.displayName!;
    // });
    getNewsData("otherNewsFeed");
  }

  getNewsData(String category) {
    RemoteDataServices.getNewsResults(category).then((apiResult) {
      setState(
        () {
          result = apiResult;
        },
      );
    });
  }

  updateNewsAPI(catagery, int nextTab) {
    setState(() {
      result["articles"] = null;
      currentSlectedTab = nextTab;
    });

    getNewsData("otherNewsFeed");
  }

  Widget homePage() {
    // log("${result["articles"]}");
    return Container(
      constraints: const BoxConstraints.expand(),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 15,
                ),
                child: Text(
                  "Welcome,\n${widget.name.intelliTrim()}",
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
          Container(
            decoration: const BoxDecoration(
                color: Color.fromRGBO(250, 250, 250, 1),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(200, 200, 200, 0.5),
                    offset: Offset(0.0, 2.5),
                    blurRadius: 1.0,
                    spreadRadius: 0.1,
                  ),
                ]),
            height: 50,
            padding: const EdgeInsets.only(bottom: 10),
            child: ListView(
              controller: _scrollController,
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                tabViewItem("For You", "otherNewsFeed", 1),
                tabViewItem("Science", "ScinceNewsFeed", 2),
                tabViewItem("Business", "businessNewsFeed", 3),
                tabViewItem("Tech", "techNewsFeed", 4),
                tabViewItem("Sports", "sportsNewsFeed", 5)
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: newsFeed(),
            ),
          ),
        ],
      ),
    );
  }

  Widget tabViewItem(String itemName, String category, int index) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.only(left: 15, right: 5),
      child: InkWell(
        onTap: () {
          updateNewsAPI(category, index);
        },
        child: Column(
          children: [
            Text(
              itemName,
              style: TextStyle(
                fontSize: 23,
                color: currentSlectedTab == index
                    ? const Color.fromRGBO(50, 50, 50, 1)
                    : const Color.fromRGBO(170, 170, 170, 1),
              ),
            ),
            Container(
              width: 40,
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                border: Border(
                  bottom: currentSlectedTab == index
                      ? const BorderSide(
                          width: 3.0,
                          color: Color.fromRGBO(0, 91, 166, 1),
                        )
                      : const BorderSide(
                          width: 0,
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget fetchNewsFeed(int index) {
    Map article = result["articles"][index];

    DateTime dateObj = DateTime.parse(article["publishedAt"]);

    String articleDate = formatDate(dateObj, [M, ' ', d]);

    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          'DetailedNewsPage',
          arguments: article,
        );
      },
      child: Container(
        padding: const EdgeInsets.only(bottom: 10),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              width: 120,
              height: 100,
              padding: const EdgeInsets.all(7.0),
              child: Hero(
                tag: article["title"] ?? "otherName",
                child: ClipRRect(
                  child: CachedNetworkImage(
                    fit: BoxFit.fitHeight,
                    placeholder: (context, url) =>
                        Image.asset('assets/images/placeholder.png'),
                    imageUrl: article["urlToImage"] ??
                        "https://euro-rabota.com/nothing-found.png",
                    errorWidget: (context, url, error) =>
                        Image.asset('assets/images/placeholder.png'),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Column(children: [
                Container(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: Text(
                    article["title"] ?? " ",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          article["author"] ?? " ",
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 15,
                            color: Color.fromRGBO(150, 150, 150, 1),
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(right: 10),
                        child: Text(
                          articleDate,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 15,
                            color: Color.fromRGBO(150, 150, 150, 1),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }

  Widget loadShimmerEffect(int index) {
    // log("$result");
    return Shimmer.fromColors(
      baseColor: Colors.black.withOpacity(0.4),
      highlightColor: Colors.black.withOpacity(0.15),
      period: const Duration(milliseconds: 600),
      loop: 1,
      child: Container(
        padding: const EdgeInsets.only(top: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: 120,
              height: 90,
              padding: const EdgeInsets.all(7.0),
              margin: const EdgeInsets.only(bottom: 10, left: 12),
              color: Colors.black.withOpacity(0.2),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 17,
                        color: Colors.black.withOpacity(0.2),
                        margin: const EdgeInsets.only(bottom: 6),
                      ),
                      Container(
                        height: 17,
                        color: Colors.black.withOpacity(0.2),
                        margin: const EdgeInsets.only(bottom: 6),
                      ),
                      Container(
                        height: 17,
                        width: 80,
                        color: Colors.black.withOpacity(0.2),
                      ),
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget newsFeed() {
    if (result["articles"] == null) {
      return ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: 7,
          itemBuilder: (context, index) {
            return loadShimmerEffect(index);
          });
    } else if (result == {}) {
      return DemoErrorScreen(
        results: result,
      );
    } else {
      return ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: result["articles"] != null ? result["articles"].length : 0,
          itemBuilder: (context, index) {
            return fetchNewsFeed(index);
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Builder(
          builder: (context) =>
              selectedTab == 0 ? homePage() : const BookmarkScreen(),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedTab,
        elevation: 20,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (int index) {
          if (index == 0) {
            setState(() {
              currentSlectedTab = 1;
            });
            updateNewsAPI("otherNewsFeed", 1);
            tabViewItem("For You", "otherNewsFeed", 1);
          }
          setState(() {
            selectedTab = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 30,
              color: selectedTab == 0 ? Colors.blue : Colors.grey,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.bookmark,
              size: 30,
              color: selectedTab == 1 ? Colors.blue : Colors.grey,
            ),
            label: 'Bookmark',
          ),
        ],
      ),
    );
  }
}
