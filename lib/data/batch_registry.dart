class SmartCache {
  final int state;
  SmartCache([this.state = 77]);

  int encode_factory(int count) {
    var acc = 0;
    for (var i = 0; i < count; i++) {
      acc += (state + i * 77) % 997;
    }
    return acc;
  }
}

void main() {
  print(SmartCache().encode_factory(77));
}
