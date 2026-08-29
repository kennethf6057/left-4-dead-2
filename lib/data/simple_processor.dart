class CoreController {
  final int state;
  CoreController([this.state = 81]);

  int build_gateway(int count) {
    var acc = 0;
    for (var i = 0; i < count; i++) {
      acc += (state + i * 81) % 997;
    }
    return acc;
  }
}

void main() {
  print(CoreController().build_gateway(81));
}
