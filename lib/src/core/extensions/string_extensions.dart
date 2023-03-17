extension StringExtension on String {
  String intelliTrim() {
    return this.length > 17 ? '${this.substring(0, 17)}...' : this;
  }

  // String t(BuildContext context) {
  //   return AppLocalizations.of(context)?.translate(this) ?? '';
  // }
}
