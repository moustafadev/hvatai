extension TryParse on int {
  int tryParseInt() {
    return int.tryParse(toString()) ?? 0;
  }
}

extension ParseStringToInt on String {
  int safeParseToInt() {
    return int.tryParse(this) ?? 0;
  }
}

extension Unique<E, Id> on List<E> {
  List<E> unique([Id Function(E element)? id, bool inplace = true]) {
    final ids = <dynamic>{};
    var list = inplace ? this : List<E>.from(this);
    list.retainWhere((x) => ids.add(id != null ? id(x) : x as Id));
    return list;
  }
}

extension FormatDouble on double {
  String get formatNumber {
    String numStr = toStringAsFixed(2);

    if (numStr.endsWith('.00')) {
      return toInt().toString();
    } else {
      return numStr;
    }
  }

  /// Formats the number with the specified decimal places, removing trailing zeros
  /// Only uses toStringAsFixed(0) if the decimal part is actually zero
  /// Example: 100.0.toStringAsFixedSmart(0) -> "100" (rest is zero, so show as integer)
  /// Example: 100.5.toStringAsFixedSmart(0) -> "100.5" (rest is not zero, show decimals)
  /// Example: 100.5.toStringAsFixedSmart(1) -> "100.5"
  /// Example: 100.50.toStringAsFixedSmart(2) -> "100.5" (removes trailing zeros)
  String get toStringAsFixedSmart {
    String s = toStringAsFixed(10);
    s = s.replaceFirst(RegExp(r'\.?0+$'), '');
    return s;
  }
}
