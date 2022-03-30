import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:monster_group/utils/constant.dart';
import 'package:monster_group/utils/extension.dart';

class CatalogScreen extends StatefulWidget {
  const CatalogScreen({Key? key}) : super(key: key);

  @override
  State<CatalogScreen> createState() => _CatalogScreenState();
}

class _CatalogScreenState extends State<CatalogScreen> {
  List catalogueList = [].obs;

  Future<void> getCatalogue() async {
    final String response =
        await rootBundle.loadString('assets/data/catalogue.json');
    List data = await json.decode(response);
    setState(() {
      catalogueList = data;
    });
  }

  @override
  void initState() {
    super.initState();
    getCatalogue();
  }

  Future refreshData() async{
    catalogueList.clear();
    await Future.delayed(Duration(seconds: 2));
    initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog'),
        centerTitle: true,
      ),
      body: RefreshIndicator(
        onRefresh: refreshData ,
        child: Obx(
          () => ListView.separated(
            separatorBuilder: ((context, index) => Divider(
              thickness: 0.2,
              color: kGrey,
              indent: 35.0,
              endIndent: 35.0
              )),
            itemCount: catalogueList.length,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.all(kDefaultPadding),
                child: Row(
                  children: [
                    Container(
                      height: 14.0.hp,
                      width: 14.0.hp,
                      decoration: BoxDecoration(
                        border: Border.all(color: kBrown, width: 2.0),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: CachedNetworkImage(
                          imageUrl: catalogueList[index]['image'],
                          placeholder: (context, url) => CircularProgressIndicator(),
                          errorWidget: (context, url, error) => CircularProgressIndicator(), 
                      ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            catalogueList[index]['name'],
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 12.0.sp,
                            ),
                          ),
                          Text(
                            '${catalogueList[index]['price'].toString()}/kg',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 10.0.sp,
                              fontStyle: FontStyle.italic, 
                              color: kGrey),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}


