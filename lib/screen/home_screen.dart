// ignore_for_file: must_be_immutable, avoid_print
import 'package:flutter/material.dart';
import 'package:flutter_gallery/components/gallery_list.dart';
import 'package:flutter_gallery/components/list_tile.dart';
import 'package:flutter_gallery/constants/text_constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController controller = ScrollController();
  bool isShowClearIcon = true;
  bool isScroll = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff030303),
        body: Column(
          children: [
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/logo.png',
                  ),
                  Text(
                    '  Flutter',
                    style: titleText.copyWith(
                      fontSize: 20 * MediaQuery.textScaleFactorOf(context),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 8,
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                      color: Color(0xffe6ebeb),
                    ),
                    width: double.infinity,
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 60,
                              right: 50,
                              top: 20,
                            ),
                            child: Text(
                              "Gallery",
                              style: subHeader,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 60,
                              right: 40,
                            ),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              controller: controller,
                              child: Stack(
                                children: [
                                  Row(
                                    children: [
                                      GalleryList(
                                        asset: 'assets/reply.png',
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      GalleryList(
                                        asset: 'assets/shrine.png',
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      GalleryList(
                                        asset: 'assets/rally.png',
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      GalleryList(
                                        asset: 'assets/crane.png',
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      GalleryList(
                                        asset: 'assets/fortnightly.png',
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      GalleryList(
                                        asset: 'assets/starter.png',
                                      ),
                                    ],
                                  ),
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                      alignment: Alignment.center,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.2,
                                      width: MediaQuery.of(context).size.width *
                                          1.45,
                                      color: Colors.transparent,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          CircleAvatar(
                                            backgroundColor: Colors.white12,
                                            child: IconButton(
                                              icon: const Icon(
                                                Icons.arrow_back_ios_sharp,
                                                color: Colors.white,
                                              ),
                                              onPressed: () {
                                                if (isScroll == true) {
                                                  setState(() {
                                                    isScroll = false;
                                                    controller.jumpTo(1000);
                                                  });
                                                } else {
                                                  setState(() {
                                                    isScroll = true;
                                                    controller.jumpTo(0);
                                                  });
                                                }
                                              },
                                            ),
                                          ),
                                          CircleAvatar(
                                            backgroundColor: Colors.white12,
                                            child: IconButton(
                                              icon: const Icon(
                                                Icons.arrow_forward_ios,
                                                color: Colors.white,
                                              ),
                                              onPressed: () {
                                                if (isScroll == true) {
                                                  setState(() {
                                                    isScroll = false;
                                                    controller.jumpTo(1000);
                                                  });
                                                } else {
                                                  setState(() {
                                                    isScroll = true;
                                                    controller.jumpTo(0);
                                                  });
                                                }
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 60,
                              right: 80,
                            ),
                            child: Text(
                              'Categories',
                              style: subText,
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 60,
                              right: 80,
                            ),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: const Color(0xffffffff),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(10),
                                            topRight: Radius.circular(10),
                                          ),
                                          border: Border.all(
                                            color: Colors.transparent,
                                          ),
                                        ),
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.3,
                                        height:
                                            MediaQuery.of(context).size.width *
                                                0.05,
                                        child: HeaderTile(
                                          headerText: 'MATERIAL ',
                                          assetFile: 'assets/material.png',
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 2,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: const Color(0xffffffff),
                                          borderRadius: const BorderRadius.only(
                                            bottomLeft: Radius.circular(10),
                                            bottomRight: Radius.circular(10),
                                          ),
                                          border: Border.all(
                                            color: Colors.transparent,
                                          ),
                                        ),
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.3,
                                        height:
                                            MediaQuery.of(context).size.width *
                                                0.3,
                                        child: SingleChildScrollView(
                                          child: Column(
                                            children: [
                                              ListileWidget(
                                                title: 'App bar',
                                                subTitle:
                                                    'Displays information and action relating to the current screen',
                                                icons: Icons.branding_watermark,
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.only(
                                                    left: 70, right: 20),
                                                child: Divider(),
                                              ),
                                              ListileWidget(
                                                title: 'Banner',
                                                subTitle:
                                                    'Displaying a Banner within a List',
                                                icons: Icons
                                                    .filter_b_and_w_outlined,
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.only(
                                                    left: 70, right: 20),
                                                child: Divider(),
                                              ),
                                              ListileWidget(
                                                title: 'Bottom app bar',
                                                subTitle:
                                                    'Displaying navigation and actions at bottom',
                                                icons: Icons.branding_watermark,
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.only(
                                                    left: 70, right: 20),
                                                child: Divider(),
                                              ),
                                              ListileWidget(
                                                title: 'Bottom navigation',
                                                subTitle:
                                                    'Bottom navigation with cross-fading views',
                                                icons: Icons.book,
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.only(
                                                    left: 70, right: 20),
                                                child: Divider(),
                                              ),
                                              ListileWidget(
                                                title: 'Bottom sheet',
                                                subTitle:
                                                    'Persistent and modal bottom sheets',
                                                icons:
                                                    Icons.border_bottom_rounded,
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.only(
                                                    left: 70, right: 20),
                                                child: Divider(),
                                              ),
                                              ListileWidget(
                                                title: 'Buttons',
                                                subTitle:
                                                    'Text,elevated,outlined, and more ',
                                                icons: Icons.bento_outlined,
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.only(
                                                    left: 70, right: 20),
                                                child: Divider(),
                                              ),
                                              ListileWidget(
                                                title: 'Cards',
                                                subTitle:
                                                    'Baseline cards with rounded corners',
                                                icons: Icons
                                                    .card_membership_outlined,
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.only(
                                                    left: 70, right: 20),
                                                child: Divider(),
                                              ),
                                              ListileWidget(
                                                title: 'Chips',
                                                subTitle:
                                                    'Compact elements that represent an input, attribute, or action',
                                                icons: Icons
                                                    .remove_circle_outlined,
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.only(
                                                    left: 70, right: 20),
                                                child: Divider(),
                                              ),
                                              ListileWidget(
                                                title: 'Data Tables',
                                                subTitle:
                                                    'Rows and Columns of information',
                                                icons: Icons.dataset,
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.only(
                                                    left: 70, right: 20),
                                                child: Divider(),
                                              ),
                                              ListileWidget(
                                                title: 'Dialogs',
                                                subTitle:
                                                    'Simple,alert,and fulscreen',
                                                icons: Icons
                                                    .display_settings_sharp,
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.only(
                                                    left: 70, right: 20),
                                                child: Divider(),
                                              ),
                                              ListileWidget(
                                                title: 'Divider',
                                                subTitle:
                                                    'A divider is a thin line that groups content in list and layouts',
                                                icons: Icons.dvr_outlined,
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.only(
                                                    left: 70, right: 20),
                                                child: Divider(),
                                              ),
                                              ListileWidget(
                                                title: 'Grid Lists',
                                                subTitle:
                                                    'Row and Column Layout',
                                                icons: Icons.grid_3x3_sharp,
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.only(
                                                    left: 70, right: 20),
                                                child: Divider(),
                                              ),
                                              ListileWidget(
                                                title: 'List',
                                                subTitle:
                                                    'Scrollin list layout',
                                                icons: Icons.list_alt,
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.only(
                                                    left: 70, right: 20),
                                                child: Divider(),
                                              ),
                                              ListileWidget(
                                                title: 'Menu',
                                                subTitle:
                                                    'Menu button and simple menus',
                                                icons: Icons.menu,
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: const Color(0xffffffff),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(10),
                                            topRight: Radius.circular(10),
                                          ),
                                          border: Border.all(
                                            color: Colors.transparent,
                                          ),
                                        ),
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.3,
                                        height:
                                            MediaQuery.of(context).size.width *
                                                0.05,
                                        child: HeaderTile(
                                          headerText: 'CUPERTINO ',
                                          assetFile: 'assets/cuppertino.png',
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 2,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: const Color(0xffffffff),
                                          borderRadius: const BorderRadius.only(
                                            bottomLeft: Radius.circular(10),
                                            bottomRight: Radius.circular(10),
                                          ),
                                          border: Border.all(
                                            color: Colors.transparent,
                                          ),
                                        ),
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.3,
                                        height:
                                            MediaQuery.of(context).size.width *
                                                0.3,
                                        child: SingleChildScrollView(
                                          child: Column(
                                            children: [
                                              ListileWidget(
                                                title: 'Activity indicator',
                                                subTitle:
                                                    'ios-style activity indicators',
                                                icons: Icons.refresh,
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.only(
                                                    left: 70, right: 20),
                                                child: Divider(),
                                              ),
                                              ListileWidget(
                                                title: 'Alerts',
                                                subTitle:
                                                    'ios-style alert dialogs',
                                                icons: Icons
                                                    .indeterminate_check_box_outlined,
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.only(
                                                    left: 70, right: 20),
                                                child: Divider(),
                                              ),
                                              ListileWidget(
                                                title: 'Context Menu',
                                                subTitle:
                                                    'ios-style context menu',
                                                icons: Icons.more_vert_sharp,
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.only(
                                                    left: 70, right: 20),
                                                child: Divider(),
                                              ),
                                              ListileWidget(
                                                title: ' Navigation bar',
                                                subTitle:
                                                    'ios-style navigation bar',
                                                icons:
                                                    Icons.assistant_navigation,
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.only(
                                                    left: 70, right: 20),
                                                child: Divider(),
                                              ),
                                              ListileWidget(
                                                title: 'Pickers',
                                                subTitle:
                                                    'ios-style date and time pickers',
                                                icons: Icons.calendar_today,
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.only(
                                                    left: 70, right: 20),
                                                child: Divider(),
                                              ),
                                              ListileWidget(
                                                title: 'Pull to refresh',
                                                subTitle:
                                                    'ios-style pull to refresh control',
                                                icons: Icons.refresh_outlined,
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.only(
                                                    left: 70, right: 20),
                                                child: Divider(),
                                              ),
                                              ListileWidget(
                                                title: 'Segmented control',
                                                subTitle:
                                                    'ios-style segmented control',
                                                icons: Icons
                                                    .calendar_today_outlined,
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.only(
                                                    left: 70, right: 20),
                                                child: Divider(),
                                              ),
                                              ListileWidget(
                                                title: 'Slider',
                                                subTitle: 'ios-style slider',
                                                icons:
                                                    Icons.door_sliding_rounded,
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.only(
                                                    left: 70, right: 20),
                                                child: Divider(),
                                              ),
                                              ListileWidget(
                                                title: 'Switch',
                                                subTitle: 'ios-style switch',
                                                icons: Icons.switch_right,
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.only(
                                                    left: 70, right: 20),
                                                child: Divider(),
                                              ),
                                              ListileWidget(
                                                title: 'Tab bar',
                                                subTitle:
                                                    'ios-style bottom tab bar',
                                                icons:
                                                    Icons.border_style_outlined,
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.only(
                                                  left: 70,
                                                  right: 20,
                                                ),
                                                child: Divider(),
                                              ),
                                              ListileWidget(
                                                title: 'Text fields',
                                                subTitle:
                                                    'ios-style text fields',
                                                icons: Icons.abc_sharp,
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: const Color(0xffffffff),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(10),
                                            topRight: Radius.circular(10),
                                          ),
                                          border: Border.all(
                                            color: Colors.transparent,
                                          ),
                                        ),
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.3,
                                        height:
                                            MediaQuery.of(context).size.width *
                                                0.05,
                                        child: HeaderTile(
                                          headerText: 'STYLES & OTHERS ',
                                          assetFile: 'assets/styles.png',
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 2,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: const Color(0xffffffff),
                                          borderRadius: const BorderRadius.only(
                                            bottomLeft: Radius.circular(10),
                                            bottomRight: Radius.circular(10),
                                          ),
                                          border: Border.all(
                                            color: Colors.transparent,
                                          ),
                                        ),
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.3,
                                        height:
                                            MediaQuery.of(context).size.width *
                                                0.3,
                                        child: SingleChildScrollView(
                                          child: Column(
                                            children: [
                                              ListileWidget(
                                                title: 'Motion',
                                                subTitle:
                                                    'All of the predefined transition pattern',
                                                icons: Icons.splitscreen_sharp,
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.only(
                                                  left: 70,
                                                  right: 20,
                                                ),
                                                child: Divider(),
                                              ),
                                              ListileWidget(
                                                title: 'Colors',
                                                subTitle:
                                                    'All of the predefined colors',
                                                icons: Icons.color_lens,
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.only(
                                                    left: 70, right: 20),
                                                child: Divider(),
                                              ),
                                              ListileWidget(
                                                title: 'Typography',
                                                subTitle:
                                                    'All of the predefined text styles',
                                                icons: Icons.text_fields_sharp,
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.only(
                                                    left: 70, right: 20),
                                                child: Divider(),
                                              ),
                                              ListileWidget(
                                                title: '2D transformation',
                                                subTitle: 'Plan,zoom,rotate',
                                                icons: Icons.grid_4x4_sharp,
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.only(
                                                    left: 70, right: 20),
                                                child: Divider(),
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 60,
                              right: 80,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/logo2.png',
                                    ),
                                    Text(
                                      'Flutter',
                                      style: cardText,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    TextButton(
                                      style: const ButtonStyle(
                                        backgroundColor:
                                            MaterialStatePropertyAll<Color>(
                                          Colors.transparent,
                                        ),
                                      ),
                                      onPressed: () {},
                                      child: Row(
                                        children: [
                                          const Icon(
                                            Icons.info,
                                            color: Colors.black54,
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            'About flutter Gallery',
                                            style: paragraph.copyWith(
                                              color: Colors.black54,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    TextButton(
                                      style: const ButtonStyle(
                                        backgroundColor:
                                            MaterialStatePropertyAll<Color>(
                                          Colors.transparent,
                                        ),
                                      ),
                                      onPressed: () {},
                                      child: Row(
                                        children: [
                                          const Icon(
                                            Icons.feedback_outlined,
                                            color: Colors.black54,
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            'Send Feedback',
                                            style: paragraph.copyWith(
                                              color: Colors.black54,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      'Designed by TOASTER in London',
                                      style: paragraph,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (isShowClearIcon == true)
                    Positioned(
                      top: 4,
                      right: 4,
                      child: InkWell(
                        onTap: () {
                          toggleIcon();
                        },
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(30),
                              bottomLeft: Radius.circular(10),
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Icon(
                              Icons.toggle_off,
                            ),
                          ),
                        ),
                      ),
                    ),
                  if (isShowClearIcon == false)
                    Positioned(
                      top: 4,
                      right: 4,
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            isShowClearIcon = !isShowClearIcon;
                          });
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.25,
                          decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 20.0,
                                spreadRadius: 0,
                                offset: Offset(0, 1),
                              )
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(30),
                              topLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30),
                              bottomLeft: Radius.circular(30),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: InkWell(
                                    onTap: () {
                                      toggleIcon();
                                    },
                                    child: const Icon(
                                      Icons.clear,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Settings',
                                        style: cardText.copyWith(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      ListView.builder(
                                        shrinkWrap: true,
                                        itemCount: 5,
                                        itemBuilder: (context, index) {
                                          String checkCardTitle() {
                                            if (index == 0) {
                                              return 'TextScaling';
                                            } else if (index == 1) {
                                              return 'TextDirection';
                                            } else if (index == 2) {
                                              return 'Locale';
                                            } else if (index == 3) {
                                              return 'Platform mechanics';
                                            } else {
                                              return 'Theme';
                                            }
                                          }

                                          String checkCardSubTitle() {
                                            if (index == 0) {
                                              return 'System';
                                            } else if (index == 1) {
                                              return 'Based on locale';
                                            } else if (index == 2) {
                                              return 'System-English (India)';
                                            } else if (index == 3) {
                                              return 'Linux';
                                            } else {
                                              return 'System';
                                            }
                                          }

                                          return CardContents(
                                            cardTitle: checkCardTitle(),
                                            cardSubTitle: checkCardSubTitle(),
                                          );
                                        },
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  toggleIcon() {
    setState(() {
      isShowClearIcon = !isShowClearIcon;
    });
  }
}

class CardContents extends StatelessWidget {
  final String? cardTitle;
  final String? cardSubTitle;
  const CardContents({
    required this.cardTitle,
    required this.cardSubTitle,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      color: const Color(0xffe6e9e9),
      child: ListTile(
        title: Text(
          cardTitle!,
          style: paragraph,
        ),
        subtitle: Text(
          cardSubTitle!,
          style: paragraph.copyWith(
            fontSize: 14,
          ),
        ),
        trailing: const Icon(
          Icons.arrow_drop_down,
        ),
      ),
    );
  }
}
