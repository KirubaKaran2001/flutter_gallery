// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_gallery/constants/text_constants.dart';

class ListileWidget extends StatelessWidget {
  String? title;
  String? subTitle;
  IconData? icons;
  ListileWidget({
    required this.subTitle,
    required this.title,
    required this.icons,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      leading: Icon(
        icons,
        color: const Color(0xffb93c5d),
      ),
      title: Text(
        title!,
        style: paragraph,
      ),
      subtitle: Text(
        subTitle!,
        style: paragraph,
      ),
    );
  }
}

class HeaderTile extends StatelessWidget {
  String? assetFile;
  String? headerText;
  HeaderTile({
    required this.headerText,
    required this.assetFile,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            assetFile!,
          ),
          const SizedBox(
            width: 20,
          ),
          Text(
            headerText!,
            style: cardText,
          ),
        ],
      ),
    );
  }
}


//  Positioned(
//                                     left: MediaQuery.of(context).size.width,
//                                     top: 0,
//                                     bottom: 0,
//                                     child: SizedBox(
//                                       height:
//                                           MediaQuery.of(context).size.height *
//                                               0.3,
//                                       child: Center(
//                                         child: CircleAvatar(
//                                           backgroundColor: Colors.blueGrey[50],
//                                           radius: 30,
//                                           child: IconButton(
//                                             onPressed: () {
//                                               if (isScroll == true) {
//                                                 setState(() {
//                                                   isScroll = false;
//                                                   controller.jumpTo(1000);
//                                                 });
//                                               } else {
//                                                 setState(() {
//                                                   isScroll = false;
//                                                   controller.jumpTo(0);
//                                                 });
//                                               }
//                                             },
//                                             icon: const Icon(
//                                               Icons.arrow_forward_ios,
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                   ),