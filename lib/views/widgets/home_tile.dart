import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:izigo/models/accomodation_Model.dart';
import 'package:izigo/views/widgets/colors.dart';


class NearByServicesTile extends StatefulWidget {

  AccomodationModel accomodationModel;

  NearByServicesTile({
     @required this.accomodationModel,
    Key key,
  }) : super(key: key);

  @override
  _NearByMeTileState createState() => _NearByMeTileState();
}

class _NearByMeTileState extends State<NearByServicesTile> {
  @override
  Widget build(BuildContext context) {
    final boldFonts = Theme.of(context)
        .textTheme
        .headline2
        .copyWith(fontWeight: FontWeight.w800, color: Colors.black);
    // final textstyle = Theme.of(context).textTheme;
    final mediumFont = Theme.of(context).textTheme.bodyText2;
    return Container(
      // color: Colors.red,
      height: Get.height/10,
      width: Get.width/1.3,
      child: Stack(
        children: [
          Card(
            elevation: 0.0,
            child: Column(
              children: [
                Image.asset(
                  widget.accomodationModel.img,
                  // height: 133,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      widget.accomodationModel.title,
                      style: mediumFont.copyWith(color: mainColor1,),
                    ),
                    Spacer(),
                    widget.accomodationModel.icon,
                    SizedBox(
                      width: 8,
                    ),
                  ],
                ),
                SizedBox(
                  height: 2,
                ),
                Row(
                  children: [
                    Text(
                      widget.accomodationModel.descrption,
                      style: mediumFont.copyWith(fontSize: 10),
                    ),
                    Spacer(),
                    Text(
                      widget.accomodationModel.distance + " mi",
                      style: mediumFont.copyWith(fontSize: 10),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                  ],
                ),
                SizedBox(
                  height: 2,
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.location_on,
                      size: 12,
                      color: mainColor2,
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Expanded(
                      child: Text(
                        widget.accomodationModel.address,
                        style: mediumFont.copyWith(
                            fontSize: 11,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Align(
              alignment: Alignment.topRight,
              child: Container(
                  margin: EdgeInsets.only(top: 4, right: 4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(12),
                  ),
                  color: mainColor1.withOpacity(0.4),
                ),

                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12,vertical: 5),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // SizedBox(
                        //   height: 5,
                        // ),
                        Text(
                          widget.accomodationModel.rate,
                          style: boldFonts.copyWith(
                              fontSize: 11, color: Color(0xffFFFFFF)),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          widget.accomodationModel.TRating + " (" + widget.accomodationModel.TReviews + ")",
                          style: mediumFont.copyWith(
                              fontSize: 10, color: Color(0xffFFFFFF)),
                        )
                      ],
                    ),
                  )))
        ],
      ),
    );
  }
}




class accomodationTile extends StatefulWidget {
  AccomodationModel accomodationModel;

  accomodationTile({
    @required this.accomodationModel,
    Key key,
  }) : super(key: key);

  @override
  _accomodationTileState createState() => _accomodationTileState();
}

class _accomodationTileState extends State<accomodationTile> {


  @override
  Widget build(BuildContext context) {

    final boldFonts = Theme.of(context)
        .textTheme
        .headline2
        .copyWith(fontWeight: FontWeight.w800, color: Colors.white,fontSize: 16);

    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(

        height: 260,
        width: 150,
        decoration: BoxDecoration(
            color: mainColor1,
          borderRadius: BorderRadius.all(Radius.circular(12)),
          image: DecorationImage(
            image: AssetImage(widget.accomodationModel.img),
            fit: BoxFit.cover,
            colorFilter: new ColorFilter.mode(mainColor1.withOpacity(0.7), BlendMode.dstATop),
          )
        ),
        child: Center(child: Text(widget.accomodationModel.title,
        style: boldFonts,
        textAlign: TextAlign.center,)),
      ),
    );
  }
}

