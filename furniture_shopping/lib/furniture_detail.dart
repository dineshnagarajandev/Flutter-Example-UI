import 'package:flutter/material.dart';
import 'package:furniture_shopping/data_model.dart';

class FurnitureDetail extends StatefulWidget {
  final SeatingDetail furnitureDetail;
  const FurnitureDetail({Key? key, required this.furnitureDetail})
      : super(key: key);

  @override
  _FurnitureDetailState createState() => _FurnitureDetailState();
}

class _FurnitureDetailState extends State<FurnitureDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE3E4EB),
      appBar: AppBar(
        titleTextStyle: TextStyle(fontWeight: FontWeight.w600),
        backgroundColor: Color(0xffE3E4EB),
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Container(
              width: 60,
              height: 60,
              child: Icon(Icons.done),
            ),
          )
        ],
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(top: 120, left: 20, right: 20, bottom: 60),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.topCenter,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(top: 40),
                      child: AspectRatio(
                        aspectRatio: 1,
                        child: Image.asset(widget.furnitureDetail.imageName,
                            fit: BoxFit.cover),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: new BorderRadius.circular(40.0),
                      child: Image.asset(widget.furnitureDetail.imageName,
                          height: 80, width: 80),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 0.0),
                  child: Container(
                    height: 140,
                    child: Image.asset(widget.furnitureDetail.imageName),
                  ),
                ),
                Text(
                  widget.furnitureDetail.name,
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 32),
                ),
                Text(
                  widget.furnitureDetail.price,
                  style: TextStyle(fontSize: 20),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: 20.0, right: 20.0, top: 20, bottom: 40),
                  child: Text(
                    widget.furnitureDetail.description,
                    style: TextStyle(fontSize: 20, color: Color(0xFF737A95)),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  height: 50,
                  decoration: BoxDecoration(),
                  child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, filterIndex) {
                        return Container(
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: (filterIndex == 0)
                                ? Border.all(width: 2, color: Color(0xffE3E4EB))
                                : Border(),
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: FractionallySizedBox(
                              heightFactor:
                                  0.9, // Adjust those two for the white space
                              widthFactor: 0.9,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: widget.furnitureDetail
                                      .colorOptions[filterIndex],
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (context, filterIndex) {
                        return Container(
                          width: 20,
                        );
                      },
                      itemCount: widget.furnitureDetail.colorOptions.length),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                        height: 60,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: Text(
                            "Buy",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                                fontSize: 16),
                          ),
                        )),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
