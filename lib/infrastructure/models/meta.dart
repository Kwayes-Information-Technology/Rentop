class Meta {
  final int currentPage;
  final int totalPages;

  Meta({
    required this.currentPage,
    required this.totalPages,
  });

  static Meta fromData(Map<String, dynamic> data) {
    return Meta(
      currentPage: int.parse(data['page'].toString()),
      totalPages: int.parse(data['pagesCount'].toString()),
    );
  }
}
