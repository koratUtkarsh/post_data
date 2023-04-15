import 'package:flutter/material.dart';
import 'package:post_data/Utils/helper.dart';

class HomeProvider extends ChangeNotifier
{
  Future<String> postData()
  async {
    ApiHelper apiHelper =ApiHelper();
    String msg = await apiHelper.addProduct();
    return msg;
  }
}