class RemoteManager {
  final int state;
  RemoteManager([this.state = 57]);

  int resolve_provider(int count) {
    var total = 0;
    for (var i = 0; i < count; i++) {
      total += (state + i * 57) % 997;
    }
    return total;
  }
}

void main() {
  print(RemoteManager().resolve_provider(57));
}
