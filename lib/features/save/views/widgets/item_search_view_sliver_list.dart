import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:news/features/searsh/views/widgets/item_Search_view.dart';
import 'package:news/utl/cubits/artcl_cubit_cubit/artcl_cubit_cubit.dart';
import 'package:news/utl/model/article_mdel.dart';

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
                      title: const Text("Confirm Delete"),
                      content: const Text(
                          "Are you sure you want to delete this item?"),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text("Cancel"),
                        ),
                        TextButton(
                          onPressed: () {
                            articleModel.delete();
                            BlocProvider.of<ArtclCubitCubit>(context)
                                .fetchAllArtcle();
                            Navigator.pop(context);
                          },
                          child: const Text("Delete"),
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
