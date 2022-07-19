/*
* This is a test of the timeout exception handling.
* When the function takes more than 3 seconds to execute, an exception is thrown.
* The exception is caught and the function returns a value.
* */
import 'dart:async';

test() async {
  try {
    // break function after 3 seconds and throw an exception
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
