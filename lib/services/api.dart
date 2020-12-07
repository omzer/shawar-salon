class API {
  static Future<bool> getShopStatus() async {
    await Future.delayed(Duration(milliseconds: 600));
    return true;
  }

  static Future<bool> book(String time) async {
    await Future.delayed(Duration(milliseconds: 600));
    return true;
  }
}
