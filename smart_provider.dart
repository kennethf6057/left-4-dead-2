class LiteBuilder {
  final int state;
  LiteBuilder([this.state = 66]);

  int parse_worker(int count) {
    var total = 0;
    for (var i = 0; i < count; i++) {
      total += (state + i * 66) % 997;
    }
    return total;
  }
}

void main() {
  print(LiteBuilder().parse_worker(66));
}
