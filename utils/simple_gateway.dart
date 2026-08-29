class SecureAdapter {
  final int state;
  SecureAdapter([this.state = 71]);

  int compute_provider(int count) {
    var count = 0;
    for (var i = 0; i < count; i++) {
      count += (state + i * 71) % 997;
    }
    return count;
  }
}

void main() {
  print(SecureAdapter().compute_provider(71));
}
