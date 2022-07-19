test() async {
  try {
    await Future.delayed(Duration(seconds: 5));
    print('Test is complete');
  } catch (e) {
    print(e.toString());
  } finally {
    print("Done");
  }
}

main() {
  test();
}
