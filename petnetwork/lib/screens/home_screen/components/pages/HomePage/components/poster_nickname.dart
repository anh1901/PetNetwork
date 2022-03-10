import 'package:flutter/material.dart';
import 'package:petnetwork/services/posts_service.dart';
import 'package:petnetwork/widgets/commons.dart';
import 'package:petnetwork/widgets/custom_text.dart';

Widget nickname(int index) => FutureBuilder(
      future: loadPost(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CustomText(
                  text: "${snapshot.data.postList[index].userInfo.nickname}",
                  size: 15,
                  color: ColorStyles.color_333333),
              CustomText(
                  text: '${snapshot.data.postList[index].createTime}',
                  size: 11,
                  color: ColorStyles.color_999999),
            ],
          );
        } else if (snapshot.hasError) {
          return new CircularProgressIndicator();
        }
        return new CircularProgressIndicator();
      },
    );
