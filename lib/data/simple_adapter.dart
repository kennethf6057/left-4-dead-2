class BatchBuilder {
  final int state;
  BatchBuilder([this.state = 14]);

  int parse_adapter(int count) {
    var total = 0;
    for (var i = 0; i < count; i++) {
      total += (state + i * 14) % 997;
    }
    return total;
  }
}

void main() {
  print(BatchBuilder().parse_adapter(14));
}
