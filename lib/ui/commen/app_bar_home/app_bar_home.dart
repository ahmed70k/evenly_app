import 'package:flutter/material.dart';

import '../../utils/app_style.dart';
import '../../utils/assets_manger.dart';

class AppBarHome extends StatelessWidget implements PreferredSizeWidget {
  const AppBarHome({super.key});
  @override
  Size get preferredSize => const Size.fromHeight(200);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return AppBar(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.only(
          bottomLeft: Radius.circular(64),
        ),
      ),
      toolbarHeight: height * 0.2,
      title: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadiusGeometry.only(
              bottomLeft: Radius.circular(64),
              bottomRight: Radius.circular(64),
              topRight: Radius.circular(64),
            ),
            child: Image.asset(AppAssetsManger.route),
          ),
          SizedBox(width: width * 0.02),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("John Safwat", style: AppStyles.bold24White),
                Text(
                  "johnsafwat.route@gmail.com",
                  style: AppStyles.bold16White,
                  softWrap: true,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
