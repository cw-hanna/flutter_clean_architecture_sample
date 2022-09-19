import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:image_search/config/theme/cw_colors.dart';
import 'package:image_search/domain/entities/org.dart';
import 'package:image_search/domain/entities/org_detail.dart';
import 'package:image_search/presentation/screens/my/provider/my_org_detail_provider.dart';
import 'package:provider/provider.dart';

class OrgExpandWidget extends StatefulWidget {
  final Org org;
  const OrgExpandWidget({Key? key, required this.org}) : super(key: key);

  @override
  State<OrgExpandWidget> createState() => _OrgExpandWidgetState();
}

class _OrgExpandWidgetState extends State<OrgExpandWidget> {
  var _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final _orgDetailProvider = context.watch<MyOrgDetailProvider>();

    return ExpansionPanelList(
      animationDuration: const Duration(milliseconds: 500),
      dividerColor: CwColors.color1,
      elevation: 0,
      children: [
        ExpansionPanel(
          backgroundColor: Colors.transparent,
          headerBuilder: (context, isExpanded) {
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
                        widget.org.avatar_url.toString(),
                        width: 60,
                        height: 60,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'name : ' + widget.org.login.toString(),
                            ),
                            Text('url : ' + widget.org.url.toString()),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                )
              ],
            );
          },
          body: _orgDetailProvider.state.isLoading
              ? const Center(child: CircularProgressIndicator())
              : Column(
                  children: [
                    const Text('Repositories 목록'),
                    const SizedBox(
                      height: 10,
                    ),
                    for (var i = 0; i < _orgDetailProvider.orgs.length; i++)
                      Column(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Text(_orgDetailProvider.orgs
                                .elementAt(i)
                                .name
                                .toString()),
                          ),
                          const Divider(
                            thickness: 1,
                            color: CwColors.color1,
                          )
                        ],
                      ),
                  ],
                ),
          isExpanded: _isExpanded,
        )
      ],
      expansionCallback: (panelIndex, expanded) {
        _orgDetailProvider.fetch(widget.org.login);

        setState(() {
          _isExpanded = !_isExpanded;
          _orgDetailProvider.orgs.clear();
        });
      },
    );
  }
}
