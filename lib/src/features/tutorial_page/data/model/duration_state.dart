class DurationState {
  const DurationState({this.progress =Duration.zero, this.buffered =Duration.zero, this.total=Duration.zero});
  final Duration progress;
  final Duration buffered;
  final Duration total;
}