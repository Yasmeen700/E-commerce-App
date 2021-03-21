
import 'package:http/http.dart' as http;


Future<List> fetchCategory() async {
   await http.get('https://fakestoreapi.herokuapp.com/products/categories');

}