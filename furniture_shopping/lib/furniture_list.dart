import 'package:flutter/material.dart';
import 'package:furniture_shopping/data_model.dart';
import 'package:furniture_shopping/furniture_detail.dart';

class FurnitureList extends StatefulWidget {
  const FurnitureList({Key? key}) : super(key: key);

  @override
  _FurnitureListState createState() => _FurnitureListState();
}

class _FurnitureListState extends State<FurnitureList> {
  var selectedFilterIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60.0, right: 20, left: 20),
                child: Text(
                  "Seating",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 32),
                ),
              ),
            ],
          ),
        ),
        titleTextStyle: TextStyle(fontWeight: FontWeight.w600),
        backgroundColor: Color(0xffE3E4EB),
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            height: 80,
            color: Color(0xffE3E4EB),
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    child: Padding(
                      padding: EdgeInsets.all(6.0),
                      child: Center(
                          child: InkWell(
                        onTap: () {
                          setState(() {
                            selectedFilterIndex = index;
                          });
                        },
                        child: Container(
                            width: (index == 0) ? 60 : 150,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: (index == selectedFilterIndex)
                                  ? Colors.black
                                  : Colors.white,
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Text(
                                filterList[index],
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 16,
                                    color: (index == selectedFilterIndex)
                                        ? Colors.white
                                        : Color(0xFF737A95),
                                    fontWeight: (index == selectedFilterIndex)
                                        ? FontWeight.w700
                                        : FontWeight.normal),
                              ),
                            )),
                      )),
                    ),
                  );
                },
                separatorBuilder: (index, context) {
                  return Container();
                },
                itemCount: filterList.length),
          ),
          Expanded(
            flex: 1,
            child: Container(
                color: Color(0xffE3E4EB),
                child: Center(
                  child: ListView.separated(
                      itemBuilder: (context, index) {
                        return Container(
                          height: 220,
                          child: Padding(
                            padding: EdgeInsets.all(15),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => FurnitureDetail(
                                            furnitureDetail:
                                                seatingDetails[index])));
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Row(
                                  children: [
                                    Expanded(
                                        flex: 1,
                                        child: Container(
                                          decoration: BoxDecoration(),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 20.0, left: 20),
                                                child: Text(
                                                    seatingDetails[index].name,
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 24)),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 4.0, left: 20),
                                                child: Text(
                                                    seatingDetails[index].price,
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color:
                                                            Color(0xFF737A95))),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 4.0, left: 20),
                                                child: Expanded(
                                                    flex: 1,
                                                    child: Container(
                                                      height: 14,
                                                      decoration:
                                                          BoxDecoration(),
                                                      child: ListView.separated(
                                                          scrollDirection:
                                                              Axis.horizontal,
                                                          itemBuilder: (context,
                                                              filterIndex) {
                                                            return Container(
                                                              width: 14,
                                                              decoration: BoxDecoration(
                                                                  color: seatingDetails[
                                                                              index]
                                                                          .colorOptions[
                                                                      filterIndex],
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              7)),
                                                            );
                                                          },
                                                          separatorBuilder:
                                                              (context,
                                                                  filterIndex) {
                                                            return Container(
                                                              width: 8,
                                                            );
                                                          },
                                                          itemCount:
                                                              seatingDetails[
                                                                      index]
                                                                  .colorOptions
                                                                  .length),
                                                    )),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 6.0, left: 20),
                                                child: Text(
                                                  seatingDetails[index]
                                                      .description,
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color: Color(0xFF737A95)),
                                                  maxLines: 3,
                                                ),
                                              )
                                            ],
                                          ),
                                        )),
                                    Expanded(
                                        flex: 1,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: Colors.transparent),
                                          child: Image.asset(
                                              seatingDetails[index].imageName),
                                        ))
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return Container();
                      },
                      itemCount: seatingDetails.length),
                )),
          ),
        ],
      ),
    );
  }
}
