void main(List<String> args) {
  try {
    int score = int.parse(args[0]);

    if (score >= 80) {
      print('You passed');
    } else {
      print('Uncaught Error: Assertion failed: "The score must be bigger or equal to 80"');
    }
  } catch (e) {
    print('Uncaught Error: Assertion failed: "Please provide a valid integer score."');
  }
}