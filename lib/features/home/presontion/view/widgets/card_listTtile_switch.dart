import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardListTileSwitch extends StatelessWidget {
  const CardListTileSwitch({
    Key? key,
    required this.icon,
    required this.isSwitched,
    required this.title,
    this.onChanged,
  }) : super(key: key);

  final IconData icon;
  final bool isSwitched;
  final void Function()? onChanged;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 10.h),
      child: Card(
        // color: Colors.grey[300],
        child: ListTile(
          leading: Icon(icon
              // color: Colors.grey[600],
              ),
          title: Text(title),
          trailing: IconButton(
            onPressed: onChanged,
            icon: const Icon(
              Icons.change_circle_outlined,
              color: Color(0xff5F60c8),
            ),
          ),
        ),
      ),
    );
  }
}
