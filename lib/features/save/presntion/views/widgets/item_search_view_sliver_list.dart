import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:news/features/searsh/presontion/views/widgets/item_Search_view.dart';
import 'package:news/features/save/presntion/view_model/cubit/fetch_all_artcle_cubit/artcl_cubit_cubit.dart';
import 'package:news/features/home/data/model/article_mdel.dart';
import 'package:news/generated/l10n.dart';

class ItemSearchViewSliverList extends StatelessWidget {
  const ItemSearchViewSliverList({
    super.key,
    required this.articleModel,
  });

  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Slidable(
        direction: Axis.horizontal,
        endActionPane: ActionPane(
          motion: const StretchMotion(),
          children: [
            SlidableAction(
              onPressed: (context) {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text(S.of(context).Confirm_Delete),
                      content: Text(S.of(context).Are_you_sure_you_want),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(S.of(context).Cancel),
                        ),
                        TextButton(
                          onPressed: () {
                            articleModel.delete();
                            BlocProvider.of<ArtclCubitCubit>(context)
                                .fetchAllArtcle();
                            Navigator.pop(context);
                          },
                          child: Text(S.of(context).Delete),
                        ),
                      ],
                    );
                  },
                );
              },
              backgroundColor: Colors.red,
              icon: Icons.delete,
              label: 'Delete',
            ),
          ],
        ),
        child: ItemSearchView(articleModel: articleModel));
  }
}
