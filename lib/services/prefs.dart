import 'package:get_storage/get_storage.dart';
import 'package:shawar_salon/services/keys.dart';

class Prefs {
  static Prefs _instance;
  final box = GetStorage();

  static Prefs getInstance() {
    if (_instance == null) _instance = Prefs();
    return _instance;
  }

  Future<void> init() async => await GetStorage.init();

  int getBookingCount() => box.read(Keys.BOOKING_COUNT) ?? 0;

  Future<void> increaseBookingCount() async {
    await box.write(Keys.BOOKING_COUNT, getBookingCount() + 1);
  }
}
