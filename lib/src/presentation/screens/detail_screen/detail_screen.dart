import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:date_format/date_format.dart';
import 'package:hive/hive.dart';

import '../../../infrastructure/data_sources/local_data_sources.dart';

class NewsDetailPage extends StatefulWidget {
  const NewsDetailPage({
    Key? key,
  }) : super(key: key);

  @override
  _NewsDetailPageState createState() => _NewsDetailPageState();
}

class _NewsDetailPageState extends State<NewsDetailPage> {
  late Map article;
  late List bookmarks;
  bool doesBookmarkExist = false;
  var hiveBox;
  var hiveService = HiveService();

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      setState(() {
        article = ModalRoute.of(context)!.settings.arguments as Map;
        checkBookmark(article);
      });
    });
  }

  void checkBookmark(Map article) async {
    hiveBox = await Hive.openBox('bookmarks');
    bookmarks = hiveBox.get("bookmarks") ?? [];
    for (var element in bookmarks) {
      if (element["publishedAt"] == article["publishedAt"]) {
        doesBookmarkExist = true;
      }
    }
    setState(() {
      doesBookmarkExist = doesBookmarkExist;
    });
  }

  void hiveBookmark(Map article) async {
    bookmarks = hiveBox.get("bookmarks") ?? [];
    // print(!doesBookmarkExist);
    bool bookmarkStatus;
    if (!doesBookmarkExist) {
      bookmarkStatus =
          await hiveService.addToBookmark(article, doesBookmarkExist);
      setState(() {
        doesBookmarkExist = bookmarkStatus;
      });
    } else {
      bookmarkStatus =
          await hiveService.removeFromBookmark(article, doesBookmarkExist);
      setState(() {
        doesBookmarkExist = bookmarkStatus;
      });
    }

    bookmarks = hiveService.getBookmarks();
    setState(() {
      doesBookmarkExist = doesBookmarkExist;
    });
  }

  @override
  Widget build(BuildContext context) {
    article = ModalRoute.of(context)!.settings.arguments as Map;
    DateTime dateObj = DateTime.parse(article["publishedAt"]);
    String articleDate = formatDate(
      dateObj,
      [M, ' ', d],
    );

    return Scaffold(
      body: SafeArea(
        child: Container(
          color: const Color.fromRGBO(250, 250, 250, 1),
          child: Column(
            children: <Widget>[
              Stack(
                children: [
                  Hero(
                    tag: article["title"] ?? "otherName",
                    child: ClipRRect(
                      child: CachedNetworkImage(
                        fit: BoxFit.fitHeight,
                        placeholder: (context, url) =>
                            Image.asset('assets/images/placeholder.png'),
                        imageUrl: article["urlToImage"] ?? " ",
                        errorWidget: (context, url, error) =>
                            Image.asset('assets/images/placeholder.png'),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            Navigator.pop(context, "DetailedNewsPage");
                          },
                          child: Container(
                            height: 38,
                            width: 38,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.black.withOpacity(0.35),
                            ),
                            child: const Icon(
                              Icons.chevron_left,
                              size: 33.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            hiveBookmark(article);
                          },
                          child: doesBookmarkExist == false
                              ? Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: Colors.black.withOpacity(0.35),
                                  ),
                                  child: const Icon(
                                    Icons.bookmark_border,
                                    size: 25.0,
                                    color: Colors.white,
                                  ),
                                )
                              : Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.black.withOpacity(0.35),
                                  ),
                                  child: const Icon(
                                    Icons.bookmark,
                                    size: 25,
                                    color: Colors.white,
                                  ),
                                ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Container(
                padding:
                    const EdgeInsets.only(top: 15, left: 10, right: 10, bottom: 10),
                child: Text(
                  article["title"] ?? " ",
                  style: const TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 5),
                child: Row(
                  children: <Widget>[
                    article["author"] != null
                        ? Expanded(
                            child: Container(
                              padding: const EdgeInsets.only(left: 15),
                              child: Text(
                                "Article by : ${article["author"]}",
                                style: const TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          )
                        : Container(),
                    Container(
                      padding: const EdgeInsets.only(left: 20, right: 25),
                      child: Text(
                        articleDate,
                        style: const TextStyle(fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(12),
                child: Text(
                  article["description"] ?? "",
                  style: TextStyle(
                    fontSize: 19,
                    color: Colors.black.withOpacity(0.5),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}