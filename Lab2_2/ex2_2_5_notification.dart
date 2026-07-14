import 'dart:async';

void main() {
  print('เริ่มต้นระบบแจ้งเตือน...');

  StreamController<String> notificationController = StreamController<String>();

  notificationController.stream.listen(
    (notification) {
      print('กระดิ่งแจ้งเตือน 🔔: $notification');
    },
    onError: (error) {
      print('เกิดข้อผิดพลาดในการแจ้งเตือน: $error');
    },
    onDone: () {
      print('--- ระบบแจ้งเตือน: สตรีมปิดการทำงานแล้ว (onDone) ---');
    },
  );

  notificationController.add('คุณมีข้อความใหม่ 1 ข้อความ');
  notificationController.add('อัปเดตระบบเสร็จสิ้น');
  notificationController.add('แจ้งเตือนการส่งงานวันนี้ เวลา 23:59 น.');

  notificationController.close();
}
