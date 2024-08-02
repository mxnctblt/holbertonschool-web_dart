import '4-util.dart';
import "dart:convert";


Future<num> calculateTotal() async {
  try {
    String data = await fetchUserData();
    String id = json.decode(data)['id'];
    String orders = await fetchUserOrders(id);
    List products = jsonDecode(orders);
    num total = 0;
    for (final item in products) {
      String price = await fetchProductPrice(item);
      total += num.parse(price);
    }
    return total;
  } catch (err) {
    return -1;
  }
}