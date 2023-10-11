abstract class Result<T> {
  T data;

  Result(this.data);

  factory Result.network(T data) => NetworkResult(data);

  factory Result.cache(T data) => CacheResult(data);

  bool get isNetwork => this is NetworkResult;
  bool get isCache => this is CacheResult;
}

class NetworkResult<T> extends Result<T> {
  NetworkResult(super.data);
}

class CacheResult<T> extends Result<T> {
  CacheResult(super.data);
}
