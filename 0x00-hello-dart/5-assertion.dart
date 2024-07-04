void main(List<String> args) {
 try {
    int score = int.parse(args[0]);
    assert(score >= 80, 'The score must be bigger or equal to 80');
    print('You passed');
  } catch (e) {
    print('Uncaught Error: Assertion failed: "The score must be bigger or equal to 80"');
  }
}