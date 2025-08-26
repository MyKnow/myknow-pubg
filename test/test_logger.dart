// test/test_logger.dart
// Created by MyKnow on August 26, 2025
// : Test Logger를 정의합니다.

// # TestLogger
// : Test에 대한 Log를 출력하는 Class
//
// # Methods
// - log: 각 Test Method에 대해 Log를 print할 때, 헤더에 [함수이름]을 추가한다.
// - pass: Test가 성공할 때, Log를 print한다.
// - fail: Test가 실패할 때, Log를 print한다.
class TestLogger {
  static String log(String message, {String? functionName}) {
    final caller = functionName ?? _getCurrentFunctionName();
    return '[$caller] $message';
  }

  static void pass({String? functionName}) {
    print(log('Pass', functionName: functionName));
  }

  static void fail(String message, {String? functionName}) {
    print(log('Fail: $message', functionName: functionName));
  }

  static void printInfo(String message, {String? functionName}) {
    print(log('Info: $message', functionName: functionName));
  }

  static String reason(String message, {String? functionName}) {
    return log(message, functionName: functionName);
  }

  // StackTrace를 이용해 현재 함수명 추출
  static String _getCurrentFunctionName() {
    final stackTrace = StackTrace.current;
    final frames = stackTrace.toString().split('\n');

    // 첫 번째 프레임은 현재 함수, 두 번째가 호출한 함수
    if (frames.length > 2) {
      final frame = frames[2];
      final match = RegExp(r'#\d+\s+(\w+)').firstMatch(frame);
      return match?.group(1) ?? 'Unknown';
    }
    return 'Unknown';
  }
}
