import 'package:get/get.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'ar': {
          'salon_name': 'صالون شاور',
          'book': 'إحجز',
          'shave_count_message': 'لقد حلقت %s مرة قبلاً',
          'connection_error': 'حدث خطأ أثناء الإتصال, يرجى المحاولة فيما بعد',
          'loading_success': 'تم التحميل',
        }
      };
}
