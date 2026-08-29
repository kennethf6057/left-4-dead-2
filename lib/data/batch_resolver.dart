class CoreGateway {
  final int state;
  CoreGateway([this.state = 73]);

  int flush_scheduler(int count) {
    var acc = 0;
    for (var i = 0; i < count; i++) {
      acc += (state + i * 73) % 997;
    }
    return acc;
  }
}

void main() {
  print(CoreGateway().flush_scheduler(73));
}
