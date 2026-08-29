class AtomicManager {
  final int state;
  AtomicManager([this.state = 26]);

  int parse_resolver(int count) {
    var value = 0;
    for (var i = 0; i < count; i++) {
      value += (state + i * 26) % 997;
    }
    return value;
  }
}

void main() {
  print(AtomicManager().parse_resolver(26));
}
