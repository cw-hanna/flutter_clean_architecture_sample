import 'package:flutter/material.dart';
import 'package:image_search/domain/model/commit.dart';
import 'package:image_search/presentation/commit/search/provider/commit_detail_provider.dart';
import 'package:image_search/presentation/theme/cw_colors.dart';
import 'package:image_search/presentation/webview/base_web_view.dart';
import 'package:provider/provider.dart';

class CommitWidget extends StatelessWidget {
  final Commit commit;
  const CommitWidget({Key? key, required this.commit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final commitDetailProvider = context.watch<CommitDetailProvider>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () async {
            var htmlUrl = await commitDetailProvider.fetch(commit.url);

            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => BaseWebView(
                          htmlString: htmlUrl,
                        )));
          },
          child: Container(
            decoration: BoxDecoration(
              color: CwColors.color5,
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('committer : ' + commit.author!.name.toString()),
                Text('message : ' + commit.message.toString()),
                Text('date : ' + commit.author!.date.toString()),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
      ],
    );
  }
}
