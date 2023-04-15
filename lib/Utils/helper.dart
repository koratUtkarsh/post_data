import 'package:http/http.dart' as http;
class ApiHelper
{
  Future<String> addProduct()
  async {
    String link = "https://apidatahub.000webhostapp.com/MyShop/API/adddataapi.php";
    Uri uri = Uri.parse(link);
    var respon = await http.post(uri,body: {
      "p_name":"1+",
      "p_rate":"5",
      "p_price":"29999",
      "p_offer":"5",
      "p_desc":"16GB",
      "p_category":"mobile",
    });

    if(respon.statusCode==200)
    {
      return "Success";
    }
    return "Failed";
  }
}