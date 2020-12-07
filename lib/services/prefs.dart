import 'package:get_storage/get_storage.dart';
import 'package:shawar_salon/services/keys.dart';

class Prefs {
  static Prefs _instance;
  final _box = GetStorage();

  static Prefs getInstance() {
    if (_instance == null) _instance = Prefs();
    return _instance;
  }

  Future<void> init() async => await GetStorage.init();

  int getBookingCount() => _box.read(Keys.BOOKING_COUNT) ?? 0;

  Future<void> increaseBookingCount() async {
    await _box.write(Keys.BOOKING_COUNT, getBookingCount() + 1);
  }

  Future<void> writeBookingTime(time) async {
    await _box.write(Keys.BOOKING_TIME, time);
  }

  String getBookingTime() => _box.read(Keys.BOOKING_TIME) ?? null;

  bool hasBooking() => _box.read(Keys.BOOKING_TIME) != null;

  GetStorage getBox() => _box;

  int getProfileImage() => _box.read(Keys.PROFILE_IMAGE) ?? 1;

  Future writeProfileImage(img) async {
    await _box.write(Keys.PROFILE_IMAGE, img);
  }

  String getUserName() => _box.read(Keys.USER_NAME) ?? null;

  Future writeUserName(name) async => await _box.write(Keys.USER_NAME, name);

  String getPhoneNumber() => _box.read(Keys.PHONE_NUMBER) ?? null;

  Future writePhoneNumber(number) async {
    await _box.write(Keys.PHONE_NUMBER, number);
  }
}
