import 'package:get/get.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'ar': {
          'salon_name': 'صالون شاور',
          'book': 'إحجز',
          'cancel': 'إلغاء',
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
          'back': 'رجوع',
          'stay_on_page': 'البقاء في الصفحة',
          'confirm_back_msg':
              'يوجد لديك تعديلات لم تقم بحفظها, هل أنت متأكد من أنك تريد الرجوع؟',
        }
      };
}
