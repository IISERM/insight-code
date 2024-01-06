class RiverpodError{
  final Object error;
  final StackTrace? stackTrace;
  const RiverpodError(this.error, {this.stackTrace});
}