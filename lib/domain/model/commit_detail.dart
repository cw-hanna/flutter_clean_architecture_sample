import 'package:equatable/equatable.dart';
import 'package:image_search/domain/model/commit.dart';

class CommitDetail extends Equatable {
  final Commit? commit;
  final String? url;
  final String? html_url;

  const CommitDetail({
    this.commit,
    this.url,
    this.html_url,
  });

  @override
  List<Object?> get props {
    return [
      commit,
      url,
      html_url,
    ];
  }
}
