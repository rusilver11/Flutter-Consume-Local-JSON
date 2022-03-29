import 'dart:convert';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:monster_group/modules/outlet/controller/outlet_controller.dart';
import 'package:monster_group/utils/constant.dart';
import 'package:monster_group/utils/extension.dart';

class OutletScreen extends StatefulWidget {
  const OutletScreen({ Key? key }) : super(key: key);

  @override
  State<OutletScreen> createState() => _OutletScreenState();
}

class _OutletScreenState extends State<OutletScreen> {
  
  final outletCtrl = Get.put(OutletController());

    List outletList = [];

  Future<void> getOutlet() async{
      final String response = await rootBundle.loadString('assets/data/outlet.json');
      List data = await json.decode(response);
      setState(() {
        outletList = data;
      });
  }
  @override
  void initState() {
    super.initState();
    getOutlet();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Franchise Outlet'),
        centerTitle: true,
      ),
      body:  ListView.builder(
          itemCount: outletList.length,
          itemBuilder: (context,index){
            return Container(
              padding: EdgeInsets.all(kDefaultPadding),
              child: Row(
                children: [
                  Container(
                    height: 8.0.hp,
                    width: 8.0.hp,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: kBrown
                    ),
                    child: 
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: SvgPicture.asset('assets/icons/shop_icon.svg',
                      fit: BoxFit.cover
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(outletList[index]['name'],
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 10.0.sp,
                          ),
                        ),
                        Text(outletList[index]['address'],
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 8.0.sp,
                          color: kGrey
                        ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
      ),
    );
  }
}