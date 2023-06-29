import 'package:flutter/material.dart';
import 'package:mobile/data/quotes.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

import '../const.dart';
import '../data/quotelist.dart';

class AllQuotes extends StatefulWidget {
  const AllQuotes({this.currentIndex = 0, super.key});
  final int currentIndex;
  @override
  State<AllQuotes> createState() => _AllQuotesState();
}

class _AllQuotesState extends State<AllQuotes> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        for (Quote quote in quoteList)
          !quote.is_favorite && widget.currentIndex == 2
              ? Text('')
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(quote.quote),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(quote.author),
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  Clipboard.setData(ClipboardData(
                                      text: '${quote.quote} ${quote.author}'));
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                          content: Text('Citation copiée ')));
                                },
                                child: Icon(
                                  Icons.copy,
                                  size: 30,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              InkWell(
                                onTap: () {
                                  print('This is working');
                                },
                                child: Icon(
                                  Icons.share,
                                  size: 30,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.favorite,
                                color: quote.is_favorite
                                    ? Colors.pink
                                    : Colors.black,
                                size: 30,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 1.5,
                    ),
                  ],
                ),
      ],
    );
  }
}
