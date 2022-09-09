import 'package:flutter/material.dart';
import 'package:image_search/domain/model/commit.dart';
import 'package:image_search/presentation/home/commit_detail_screen.dart';

class CommitWidget extends StatelessWidget {
  final Commit commit;
  const CommitWidget({Key? key, required this.commit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            print('bbori');
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const CommitDetailScreen()));
          },
          child: Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(66, 123, 112, 222),
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
