
class QuoteModel {
  final String? id;
  final String? content;
  final String? author;
  final String? authorSlug;
  final int? length;
  final String? dateAdded;
  final String? dateModified;

  const QuoteModel({
    this.id,
    this.content,
    this.author,
    this.authorSlug,
    this.length,
    this.dateAdded,
    this.dateModified,
  });

  factory QuoteModel.fromJson(Map<String, dynamic> json) => QuoteModel(
        id: json['_id'] as String?,
        content: json['content'] as String?,
        author: json['author'] as String?,
       
        authorSlug: json['authorSlug'] as String?,
        length: json['length'] as int?,
        dateAdded: json['dateAdded'] as String?,
        dateModified: json['dateModified'] as String?,
      );

  Map<String, dynamic> toJson() => {
        '_id': id,
        'content': content,
        'author': author,
        'authorSlug': authorSlug,
        'length': length,
        'dateAdded': dateAdded,
        'dateModified': dateModified,
      };
}
