abstract class BaseMapper<T> {
  fromMap(Map<String, dynamic> json) => T;
}
