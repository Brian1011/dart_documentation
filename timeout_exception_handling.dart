import 'dart:async';

test() async {
  try {
    await Future.delayed(Duration(seconds: 5)).timeout(Duration(seconds: 3));
    print('Test has taken 5 seconds');
  } on TimeoutException catch (e) {
    print('Test is timeout $e');
  } catch (e) {
    print('Test failed ${e.toString()}');
  } finally {
    print("Test is complete");
  }
}

main() {
  test();
  /*
    Output:
    Test is timeout TimeoutException after 0:00:03.000000: Future not completed
    Test is complete
   */
}
