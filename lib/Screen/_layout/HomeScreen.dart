import 'package:final_cvproject/WidgetHelper/SetBackRoundImageWidget.dart';
import 'package:final_cvproject/Widgets/IntroductionWidget.dart';
import 'package:final_cvproject/Widgets/SkillBarWidget.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../FooterScreen/FooterScreen.dart';
import '../HeaderScreen/HeaderScreen.dart';
import '../MiddleScreen/MiddleScreen.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override //Home Pages
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentindex = 0;

  PageController _pageviewController = PageController(initialPage: 0);
  @override
  void initState() {
    super.initState();
    _pageviewController = PageController();
  }

  @override
  void dispose() {
    _pageviewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: _currentindex,
            backgroundColor: Colors.white,
            elevation: 20,
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.black,
            selectedFontSize: 20,
            iconSize: 30,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            onTap: (value) {
              setState(() {
                _currentindex = value;
                print(_currentindex);

                if (_pageviewController.hasClients) {
                  _pageviewController.animateToPage(
                    _currentindex,
                    duration: const Duration(milliseconds: 400),
                    curve: Curves.easeInOut,
                  );
                }
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.supervised_user_circle), title: Text("•")),
              // BottomNavigationBarItem(
              //     icon: Image.asset(
              //       "assets/images/botttom (2).png",
              //       height: 30,
              //       width: 30,
              //     ),
              //     title: Text("•")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.verified_user), title: Text("•")),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    "assets/images/botttom (1).png",
                    height: 30,
                    width: 30,
                  ),
                  title: Text("•")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), title: Text("•")),
              BottomNavigationBarItem(icon: Icon(Icons.work), title: Text("•")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.bar_chart), title: Text("•")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.mail_outline_outlined), title: Text("•"))
            ]),
        body: Center(
          child: PageView(
            controller: _pageviewController,
            scrollDirection: Axis.vertical,
            children: <Widget>[
              Container(
                // Header Picture Container
                margin: EdgeInsets.only(top: 10.0, bottom: 10.0, left: 10.0),
                child: HeaderScreen(),
              ),
              Container(
                // Me Profile Widget
                decoration: BoxDecoration(color: Colors.blueAccent),
                margin: EdgeInsets.only(top: 40.0, bottom: 10.0, left: 10.0),
                child: Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.all(0),
                            child: ClipOval(
                              child: Image.asset(
                                "assets/images/MeTrans.png",
                                width: 150,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 25, right: 25, top: 70),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  "A. Avni Kasikci",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Full-Stack Devolopers",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 15),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.orange.withOpacity(0.5),
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "Junior Rookie",
                                        style: TextStyle(
                                            color: Colors.orange[900]),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        // Me Profile Footer
                        decoration: BoxDecoration(color: Colors.blueAccent),
                        margin: EdgeInsets.only(
                          top: 10.0,
                          bottom: 10.0,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              right: 25, top: 10, bottom: 20),
                          child: Container(
                            child: Text(
                              "Merhaba, Ben Avni Kaşıkçı Necmettin Erbakan Üniversitesi 3. sınıf öğrencisiyim.Yazılımı ve Geliştirmeyi ve ayrıca kahveye inanılmaz bağımlıyım.Tasarımdan nefret ediyorum.UI ler hiç bir zaman backend kadar zevk veremedi.Bu sebeple bu sayfanın tasarımın kötü bulursanız beni affedin.",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              //Hocanın Örneği
              // Container(
              //   margin: EdgeInsets.only(top: 10.0, bottom: 10.0, left: 20.0),
              //   child: ProfileScreenWidgetState(),
              // ),
              // Kendime Not:Web İçin de Tasarlanabilir Widget Yapısı gelecekte lazım olcak
              Container(
                // İletişim Bilgileri
                margin: EdgeInsets.only(top: 40.0, bottom: 10.0, left: 10.0),
                decoration: BoxDecoration(color: Colors.blueAccent),
                child: IntroductionWidget().p16(),
              ),
              Container(
                margin: EdgeInsets.only(top: 40.0, bottom: 10.0, left: 10.0),
                decoration: BoxDecoration(color: Colors.blueAccent),
                child: MiddleScreen(),
              ),
              Container(
                height: 400,
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.only(top: 40.0, bottom: 10.0, left: 10.0),
                decoration: BoxDecoration(color: Colors.blueAccent),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 25, right: 25, top: 200, bottom: 30),
                          child: Text(
                            "Genç ve çocuk olduğum için Linux ve Ruby'e aşığım.Eğer yaşlı olsaydım windows u sevebilirdim. :) Şu aralar tek derim Açık kaynağa ve githuba katkı sağlamak.Lütfen sizde katkı sağlayın.",
                            style: TextStyle(
                                color: Colors.blue[700],
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              //Skilll Bar Padding

              Container(
                height: 400,
                padding: EdgeInsets.all(20),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 25, right: 25, top: 20, bottom: 30),
                          child: Text(
                            "Benim Ultilerim :)",
                            style: TextStyle(
                                color: Colors.blue[700],
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: SetBackRoundImage(
                                icon: "assets/images/logo (1).png",
                              ),
                            ),
                            Expanded(
                              child: SkillBar("Css", 95),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: SetBackRoundImage(
                                icon: "assets/images/logo (3).png",
                              ),
                            ),
                            Expanded(
                              child: SkillBar("JavaScript", 100),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: SetBackRoundImage(
                                icon: "assets/images/logo (2).png",
                              ),
                            ),
                            Expanded(
                              child: SkillBar("Anguler Js", 100),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: SetBackRoundImage(
                                icon: "assets/images/logo (4).png",
                              ),
                            ),
                            Expanded(
                              child: SkillBar("React", 40),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: SetBackRoundImage(
                                icon: "assets/images/logo (5).png",
                              ),
                            ),
                            Expanded(
                              child: SkillBar("WordPress", 30),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              //Skilll Bar And Manuel Icon Page
              // Container(
              //   margin: EdgeInsets.only(top: 10.0, bottom: 10.0, left: 20.0),
              //   child: SetBackRoundImage(
              //     icon: "assets/images/logo (1).png",
              //   ),
              // ),
              // Container(
              //   margin: EdgeInsets.only(top: 10.0, bottom: 10.0, left: 20.0),
              //   child: SkillBar("Css", 95),
              // ),

              // Container(
              //   margin: EdgeInsets.only(top: 10.0, bottom: 10.0, left: 20.0),
              //   child: SetBackRoundImage(
              //     icon: "assets/images/logo (2).png",
              //   ),
              // ),
              // Container(
              //   margin: EdgeInsets.only(top: 10.0, bottom: 10.0, left: 20.0),
              //   child: SkillBar("Anguler Js", 100),
              // ),

              // Container(
              //   margin: EdgeInsets.only(top: 10.0, bottom: 10.0, left: 20.0),
              //   child: SetBackRoundImage(
              //     icon: "assets/images/logo (3).png",
              //   ),
              // ),
              // Container(
              //   margin: EdgeInsets.only(top: 10.0, bottom: 10.0, left: 20.0),
              //   child: SkillBar("JavaScript", 100),
              // ),

              // Container(
              //   margin: EdgeInsets.only(top: 10.0, bottom: 10.0, left: 20.0),
              //   child: SetBackRoundImage(
              //     icon: "assets/images/logo (4).png",
              //   ),
              // ),
              // Container(
              //   margin: EdgeInsets.only(top: 10.0, bottom: 10.0, left: 20.0),
              //   child: SkillBar("React", 40),
              // ),

              // Container(
              //   margin: EdgeInsets.only(top: 10.0, bottom: 5.0, left: 20.0),
              //   child: SetBackRoundImage(
              //     icon: "assets/images/logo (5).png",
              //   ),
              // ),
              // Container(
              //   margin: EdgeInsets.only(top: 10.0, bottom: 10.0, left: 20.0),
              //   child: SkillBar("WordPress", 30),
              // ),

              // Container(
              //   child: GridView.count(
              //     crossAxisCount: 3,
              //     shrinkWrap: true,
              //     padding: EdgeInsets.all(20),
              //     children: <Widget>[
              //       SetBackRoundImage(
              //         icon: "assets/images/logo (1).png",
              //       ),
              //       SkillBar("Java", 100),
              //       SetBackRoundImage(
              //         icon: "assets/images/logo (2).png",
              //       ),
              //       SkillBar("Java", 100),
              //       SetBackRoundImage(
              //         icon: "assets/images/logo (3).png",
              //       ),
              //       SkillBar("Java", 100),
              //       SetBackRoundImage(
              //         icon: "assets/images/logo (4).png",
              //       ),
              //       SkillBar("Java", 100),
              //       SetBackRoundImage(
              //         icon: "assets/images/logo (5).png",
              //       ),
              //       Padding(
              //         padding: const EdgeInsets.all(15.0),
              //         child: Stack(
              //           children: <Widget>[
              //             Image.asset(
              //               "assets/images/back.png",
              //               fit: BoxFit.cover,
              //               height: 100,
              //               width: 100,
              //             ),
              //             Positioned(
              //                 top: 15,
              //                 left: 25,
              //                 child: Text(
              //                   "5+",
              //                   style: TextStyle(fontSize: 35, color: Colors.grey),
              //                 ))
              //           ],
              //         ),
              //       )
              //     ],
              //   ),
              // ),
              // Container(
              //   width: 1080,
              //   decoration: BoxDecoration(color: Colors.blueAccent),
              //   child: Column(
              //     children: [
              //       Padding(
              //         padding: EdgeInsets.symmetric(vertical: 50),
              //         child: Container(
              //           child: Text(
              //             "About Me",
              //             style: TextStyle(
              //                 fontSize: 30,
              //                 color: Colors.white,
              //                 fontWeight: FontWeight.bold,
              //                 decoration: TextDecoration.none),
              //           ),
              //         ),
              //       ),
              //       Padding(
              //         padding: EdgeInsets.symmetric(horizontal: 20),
              //         child: Text(
              //           "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris dapibus eros diam, id suscipit turpis pellentesque ac. Vestibulum vitae mollis felis, ut aliquam sem. Nulla gravida tellus vitae odio posuere placerat. Cras finibus a diam in cursus. Nullam in auctor justo. Donec enim erat, suscipit eget ullamcorper vitae, mollis sodales neque. Nullam eu sapien elit. Duis vitae feugiat purus. Suspendisse egestas varius felis, et congue erat feugiat ornare. Nam scelerisque libero nec libero ultricies suscipit. Vivamus nec bibendum augue. Nulla ut elit eu tellus accumsan luctus. In tincidunt non purus ornare blandit. Nulla in semper sem. Cras vitae nunc elit. Vivamus eleifend turpis vel augue pharetra placerat convallis eu justo.",
              //           overflow: TextOverflow.ellipsis,
              //           maxLines: 10,
              //           style: TextStyle(
              //               fontSize: 25,
              //               color: Colors.white,
              //               fontWeight: FontWeight.bold,
              //               decoration: TextDecoration.none),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),

              Container(
                margin: EdgeInsets.only(top: 40.0, bottom: 10.0, left: 10.0),
                decoration: BoxDecoration(color: Colors.blueAccent),
                child: FooterScreen(),
              ),
              // Center(child: _buildList()),
            ],
          ),
        ));
  }
}

class ProfileScreen {}

Widget _buildList() => ListView(
      children: [
        _tile('CineArts at the Empire', '85 W Portal Ave', Icons.theaters),
        _tile('The Castro Theater', '429 Castro St', Icons.theaters),
        _tile('Alamo Drafthouse Cinema', '2550 Mission St', Icons.theaters),
        _tile('Roxie Theater', '3117 16th St', Icons.theaters),
        _tile('United Artists Stonestown Twin', '501 Buckingham Way',
            Icons.theaters),
        _tile('AMC Metreon 16', '135 4th St #3000', Icons.theaters),
        Divider(),
        _tile('K\'s Kitchen', '757 Monterey Blvd', Icons.restaurant),
        _tile('Emmy\'s Restaurant', '1923 Ocean Ave', Icons.restaurant),
        _tile('Chaiya Thai Restaurant', '272 Claremont Blvd', Icons.restaurant),
        _tile('La Ciccia', '291 30th St', Icons.restaurant),
      ],
    );

ListTile _tile(String title, String subtitle, IconData icon) => ListTile(
      title: Text(title,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
          )),
      subtitle: Text(subtitle),
      leading: Icon(
        icon,
        color: Colors.blue[500],
      ),
    );
