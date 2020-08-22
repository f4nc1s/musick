import 'package:flutter/semantics.dart';
import 'package:musick/core/const.dart';
import 'package:musick/models/music_model.dart';
import 'package:musick/pages/details_page.dart';
import 'package:musick/widgets/custom_button_widget.dart';
import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List<MusicModel> _list;
  int _playId;

  @override
  void initState() {
    _playId = 3;
    _list = MusicModel.list;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      appBar: AppBar(
        elevation: 1,
        backgroundColor: AppColors.mainColor,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              "Skin",
              style: TextStyle(color: AppColors.styleColor),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              width: 5,
              height: 5,
              decoration: BoxDecoration(
                color: AppColors.styleColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
              ),
            ),
            Text(
              "Champ",
              style: TextStyle(color: AppColors.styleColor),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    CustomButtonWidget(
                      //onTap: () {},
                      child: Icon(Icons.favorite, color: AppColors.styleColor),
                      //size: 50,
                    ),
                    //Hero(
                    //tag: 'image_view',
                    //child: CustomButtonWidget(
                    //onTap: () {
                    // Navigator.of(context).push(
                    // MaterialPage(builder: (_) = DetailPage(_playId),),
                    //);
                    //},
                    //),)
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: _list.length,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.all(16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                _list[index].title,
                                style: TextStyle(
                                  color: AppColors.styleColor,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                _list[index].album,
                                style: TextStyle(
                                  color: AppColors.styleColor.withAlpha(80),
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          CustomButtonWidget(
                            child: Icon(Icons.play_arrow),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    AppColors.mainColor,
                    AppColors.mainColor,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
