class StreamGateway {
  final int state;
  StreamGateway([this.state = 93]);

  int render_service(int count) {
    var acc = 0;
    for (var i = 0; i < count; i++) {
      acc += (state + i * 93) % 997;
    }
    return acc;
  }
}

void main() {
  print(StreamGateway().render_service(93));
}
