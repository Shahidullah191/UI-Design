import 'package:day_21/model/company_info.dart';
import 'package:flutter/material.dart';

class CompanyInfoWidget extends StatefulWidget {
  const CompanyInfoWidget({Key? key}) : super(key: key);

  @override
  State<CompanyInfoWidget> createState() => _CompanyInfoWidgetState();
}

class _CompanyInfoWidgetState extends State<CompanyInfoWidget> {

  final infoList = CompanyInfo.genertaedConoanyInfo();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 25),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Container(
            margin: EdgeInsets.only(left: 25, bottom: 25),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.white,
            ),
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                      Container(
                          height: 50,
                          width: 50,
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey.withOpacity(0.1),
                          ),
                          child: Image.asset(infoList[index].iconUrl, width: 10,)),
                      SizedBox(width: 15,),
                      Text(infoList[index].cName, style: TextStyle(fontSize: 20),),
                    ],
                    ),
                    SizedBox(width: 60,),
                    Icon(Icons.bookmark_border, color: Colors.grey,),
                  ],
                ),
                Text(infoList[index].title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.location_on_outlined, color: Colors.amberAccent.withOpacity(0.5),),
                    SizedBox(width: 8,),
                    Text(infoList[index].address, style: TextStyle(color: Colors.black54.withOpacity(0.5)),),
                  ],
                ),

              ],
            ),
          ),
          separatorBuilder: (context, index) => SizedBox(width: 0,),
          itemCount: infoList.length),
    );
  }
}
