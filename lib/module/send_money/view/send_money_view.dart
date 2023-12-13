import 'package:dana_ui/shared/theme/theme_constant.dart';
import 'package:flutter/material.dart';
import 'package:dana_ui/core.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../controller/send_money_controller.dart';

class SendMoneyView extends StatefulWidget {
  const SendMoneyView({Key? key}) : super(key: key);

  Widget build(context, SendMoneyController controller) {
    controller.view = this;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: const Text(
          "Send Money",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.help_outline,
              size: 24.0,
            ),
          ),
        ],
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: primaryColor),
            ),
            Positioned(
              left: 20,
              right: 20,
              top: 130,
              bottom: 0,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(20.0),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          width: 1.0,
                          color: Colors.grey[300]!,
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(
                            12,
                          ),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Quick Send",
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 12.0,
                          ),
                          TextField(
                            maxLines: 1,
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 15.0, horizontal: 15.0),
                              hintText: 'Find phone/bank account',
                              hintStyle: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 12.0,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide(
                                  color: Colors.grey[300]!,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide(
                                  color: Colors.grey[300]!,
                                ),
                              ),
                              prefixIcon: Icon(
                                Icons.search,
                                size: 20,
                                color: Colors.grey[400],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 12.0,
                          ),
                          Builder(builder: (context) {
                            List menuItems = [
                              {
                                "image":
                                    "https://images.unsplash.com/photo-1615109398623-88346a601842?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fG1hbnxlbnwwfHwwfHx8MA%3D%3D",
                                "name": "Krisna"
                              },
                              {
                                "image":
                                    "https://images.unsplash.com/photo-1567784177951-6fa58317e16b?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjJ8fG1hbnxlbnwwfHwwfHx8MA%3D%3D",
                                "name": "Alex"
                              },
                              {
                                "image":
                                    "https://assets.dataindonesia.id/1638419270320_36_BBNI.png",
                                "name": "Vini"
                              },
                              {
                                "image":
                                    "https://shl.co.id/wp-content/uploads/2022/11/lg-BRI-1.png",
                                "name": "Udin"
                              },
                              {
                                "image":
                                    "https://crm.vcgamers.com/uploads/product/20221124145949produk20.jpg",
                                "name": "Anonymous"
                              },
                              {
                                "image":
                                    "https://a.m.dana.id/danaweb/web/dana-meta-logo.png",
                                "name": "Player Epep"
                              },
                              {
                                "image":
                                    "https://upload.wikimedia.org/wikipedia/commons/thumb/8/85/LinkAja.svg/2048px-LinkAja.svg.png",
                                "name": "Anu"
                              },
                              {
                                "image":
                                    "https://www.pointstar-consulting.com/wp-content/uploads/2022/02/gopay-integration.png",
                                "name": "Ntah"
                              },
                            ];
                            return GridView.builder(
                              padding: EdgeInsets.zero,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                childAspectRatio: 1.0,
                                crossAxisCount: 4,
                                mainAxisSpacing: 6,
                                crossAxisSpacing: 6,
                              ),
                              itemCount: 8,
                              shrinkWrap: true,
                              physics: const ScrollPhysics(),
                              itemBuilder: (BuildContext context, int index) {
                                var menu = menuItems[index];
                                return Container(
                                  child: Column(
                                    children: [
                                      Expanded(
                                        child: CircleAvatar(
                                          backgroundImage:
                                              NetworkImage(menu["image"]),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 2.0,
                                      ),
                                      Text(
                                        menu["name"],
                                        style: const TextStyle(
                                          fontSize: 14.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            );
                          }),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 12.0,
                    ),
                    Container(
                      padding: const EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          width: 1.0,
                          color: Colors.grey[300]!,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        children: [
                          Container(
                            child: Builder(builder: (context) {
                              List menuICons = [
                                {
                                  "icon": Icons.group,
                                  "color": const Color(0xff01a952),
                                  "label": "Send to\nGroup"
                                },
                                {
                                  "icon": Icons.people,
                                  "color": const Color(0xff0090f1),
                                  "label": "Send to\nFriend"
                                },
                                {
                                  "icon": MdiIcons.bank,
                                  "color": const Color(0xffed8d17),
                                  "label": "Send to\nBank"
                                }
                              ];
                              return GridView.builder(
                                padding: EdgeInsets.zero,
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  childAspectRatio: 1.0,
                                  crossAxisCount: 3,
                                  mainAxisSpacing: 6,
                                  crossAxisSpacing: 6,
                                ),
                                itemCount: menuICons.length,
                                shrinkWrap: true,
                                physics: const ScrollPhysics(),
                                itemBuilder: (BuildContext context, int index) {
                                  var menu = menuICons[index];
                                  return Container(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Column(
                                      children: [
                                        Expanded(
                                          child: FittedBox(
                                            child: Icon(
                                              menu["icon"],
                                              color: menu["color"],
                                            ),
                                          ),
                                        ),
                                        Text(
                                          menu["label"],
                                          textAlign: TextAlign.center,
                                          maxLines: 2,
                                          style: const TextStyle(
                                              fontSize: 10.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              );
                            }),
                          ),
                          const SizedBox(
                            height: 12.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "VIEW ALL",
                                style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                    color: primaryColor),
                              ),
                              Icon(
                                MdiIcons.chevronDown,
                                size: 18.0,
                                color: primaryColor,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  State<SendMoneyView> createState() => SendMoneyController();
}
