abstract class Resources{}
enum DataStatus {LOADING, SUCCESS, ERROR, EMPTY}

class SuccessResource extends Resources {
  final DataStatus status;

  SuccessResource(this.status);
}

class LoadingResource extends Resources {
  final DataStatus status;

  LoadingResource(this.status);
}

class ErrorResource extends Resources {
  final DataStatus status;

  ErrorResource(this.status);
}

class EmptyResource extends Resources {
  final DataStatus status;

  EmptyResource(this.status);
}