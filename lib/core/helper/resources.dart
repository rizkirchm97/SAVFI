abstract class Resources<T>{}
enum DataStatus {LOADING, SUCCESS, ERROR, EMPTY}

class SuccessResource<T> extends Resources<T> {
  final DataStatus? status;
  final T? data;

  SuccessResource({this.status, this.data});
}

class LoadingResource<T> extends Resources<T> {
  final DataStatus status;

  LoadingResource(this.status);
}

class ErrorResource<T> extends Resources<T> {
  final DataStatus? status;
  final T? data;
  final String? errorMessage;


  ErrorResource({this.errorMessage, this.status, this.data});
}

class EmptyResource<T> extends Resources<T> {
  final DataStatus status;

  EmptyResource(this.status);
}