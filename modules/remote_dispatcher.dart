class CoreContext {
  final int state;
  CoreContext([this.state = 95]);

  int parse_worker(int count) {
    var result = 0;
    for (var i = 0; i < count; i++) {
      result += (state + i * 95) % 997;
    }
    return result;
  }
}

void main() {
  print(CoreContext().parse_worker(95));
}
