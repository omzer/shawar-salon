import 'package:get/get.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'ar': {
          'salon_name': 'صالون شاور',
          'book': 'إحجز',
          'cancel': 'إلغاء',
          'lang': 'اللغة',
          'shave_count_message': 'لقد حلقت %s مرة قبلاً',
          'connection_error': 'حدث خطأ أثناء الإتصال, يرجى المحاولة فيما بعد',
          'loading_success': 'تم التحميل',
          'profile': 'معلومات الحساب',
          'working_hours': 'ساعات العمل',
          'archive': 'الأرشيف',
          'settings': 'إعدادات التطبيق',
          'customer_name': 'إسم الزبون',
          'phone_number': 'رقم الهاتف',
          'be_aware': 'إنتبه',
          'enter_valid_data': 'الرجاء إدخال الإسم ورقم الهاتف بشكل صحيح',
          'back': 'رجوع',
          'colors_theme': 'نمط الألوان',
          'stay_on_page': 'البقاء في الصفحة',
          'confirm_back_msg':
              'يوجد لديك تعديلات لم تقم بحفظها, هل أنت متأكد من أنك تريد الرجوع؟',
        },
        'en': {
          'salon_name': 'Shawar\'s Salon',
          'book': 'Book',
          'cancel': 'Cancel',
          'lang': 'language',
          'colors_theme': 'Colors theme',
          'shave_count_message': 'You shaved %s times before',
          'connection_error': 'Connection error, please try again later',
          'loading_success': 'Loaded successfully',
          'profile': 'Profile info',
          'working_hours': 'Working hours',
          'archive': 'History',
          'settings': 'App settings',
          'customer_name': 'Customer name',
          'phone_number': 'Phone number',
          'be_aware': 'Be aware',
          'enter_valid_data': 'Please enter valid user name and phone number',
          'back': 'back',
          'stay_on_page': 'Stay on the page',
          'confirm_back_msg':
              'You have unsaved changes, are you sure you want to go back without saving them?',
        },
      };
}
