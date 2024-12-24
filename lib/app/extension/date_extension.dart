extension DateTimeExtensions on DateTime? {
  bool isWithinLastMinutes(int minutes) {
    if (this == null) return false;
    final now = DateTime.now();
    final difference = now.difference(this!);
    return difference.inMinutes <= minutes && difference.isNegative == false;
  }
}
