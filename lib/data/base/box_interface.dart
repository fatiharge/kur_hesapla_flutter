import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:objectbox/objectbox.dart';

abstract class BoxInterface<T> {
  BoxInterface({required Box<T> box}) : _entity = box;

  final Box<T> _entity;

  @protected
  Box<T> getEntity(BoxInterface<T> t) {
    return _entity;
  }

  StreamSubscription<Query<T>> subscribeGenerator(
    void Function(Query<T>)? onData, {
    Function? onError,
    void Function()? onDone,
    bool? cancelOnError,
  }) {
    return this.getStreamQuery.listen(
          onData,
          cancelOnError: cancelOnError,
          onDone: onDone,
          onError: onError,
        );
  }

  Stream<Query<T>> get getStreamQuery => this._entity.query().watch();

  List<T> get getAll => this._entity.getAll();

  bool get isEmpty => _entity.isEmpty();

  int get removeAll => _entity.removeAll();

  Future<List<T>> get getAllAsync => _entity.getAllAsync();

  Future<int> get removeAllAsync => _entity.removeAllAsync();

  bool contains(int id) => _entity.contains(id);

  bool containsMany(List<int> ids) => _entity.containsMany(ids);

  int count({int limit = 0}) => _entity.count(limit: limit);

  T? get(int id) => _entity.get(id);

  Future<T?> getAsync(int id) => _entity.getAsync(id);

  int put(T object, {PutMode mode = PutMode.put}) =>
      _entity.put(object, mode: mode);

  QueryBuilder<T> query([Condition<T>? qc]) => _entity.query(qc);

  bool remove(int id) => _entity.remove(id);

  Future<bool> removeAsync(int id) => _entity.removeAsync(id);

  int removeMany(List<int> ids) => _entity.removeMany(ids);

  Future<int> removeManyAsync(List<int> ids) => _entity.removeManyAsync(ids);

  List<T?> getMany(List<int> ids, {bool growableResult = false}) {
    return _entity.getMany(
      ids,
      growableResult: growableResult,
    );
  }

  Future<List<T?>> getManyAsync(List<int> ids, {bool growableResult = false}) {
    return _entity.getManyAsync(ids, growableResult: growableResult);
  }

  Future<T> putAndGetAsync(T object, {PutMode mode = PutMode.put}) {
    return _entity.putAndGetAsync(object, mode: mode);
  }

  Future<List<T>> putAndGetManyAsync(List<T> objects,
      {PutMode mode = PutMode.put}) {
    return _entity.putAndGetManyAsync(objects, mode: mode);
  }

  Future<int> putAsync(T object, {PutMode mode = PutMode.put}) {
    return _entity.putAsync(object, mode: mode);
  }

  List<int> putMany(List<T> objects, {PutMode mode = PutMode.put}) {
    return _entity.putMany(objects, mode: mode);
  }

  Future<List<int>> putManyAsync(List<T> objects,
      {PutMode mode = PutMode.put}) {
    return _entity.putManyAsync(objects, mode: mode);
  }

  int putQueued(T object, {PutMode mode = PutMode.put}) {
    return _entity.putQueued(object, mode: mode);
  }
}
