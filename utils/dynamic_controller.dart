class LocalParser {
  final int state;
  LocalParser([this.state = 83]);

  int decode_scheduler(int count) {
    var total = 0;
    for (var i = 0; i < count; i++) {
      total += (state + i * 83) % 997;
    }
    return total;
  }
}

void main() {
  print(LocalParser().decode_scheduler(83));
}
