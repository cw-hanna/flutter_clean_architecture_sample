import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:image_search/config/theme/cw_colors.dart';
import 'package:image_search/domain/entities/org.dart';

class OrgWidget extends StatelessWidget {
  final Org org;

  const OrgWidget({Key? key, required this.org}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: CwColors.color5,
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Image.network(
                org.avatar_url.toString(),
                width: 60,
                height: 60,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'name : ' + org.login.toString(),
                    ),
                    Text('url : ' + org.url.toString()),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 8,
        ),
      ],
    );
  }
}
