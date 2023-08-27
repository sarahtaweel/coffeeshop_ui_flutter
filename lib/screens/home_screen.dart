import 'package:flutter/material.dart';
import 'package:coffee_shop/widgets/item_widget.dart';
import 'package:coffee_shop/widgets/home_bottom_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this, initialIndex: 0);
    _tabController.addListener(_handleTabSelection);
    super.initState();
  }

  _handleTabSelection() {
    if (_tabController.indexIsChanging) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 221, 194),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 15),
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.notifications,
                        color: Color.fromARGB(231, 41, 27, 3),
                        size: 35,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "It’s Coffee O’clock",
                  style: GoogleFonts.pacifico(
                      color: Color.fromARGB(231, 41, 27, 3),
                      fontSize: 30,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                width: MediaQuery.of(context).size.width,
                height: 60,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color.fromARGB(231, 41, 27, 3),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Find your coffee",
                      hintStyle: TextStyle(
                        color: Colors.white.withOpacity(0.5),
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        size: 30,
                        color: Colors.white.withOpacity(0.5),
                      )),
                ),
              ),
              TabBar(
                controller: _tabController,
                labelColor: Color.fromARGB(231, 41, 27, 3),
                unselectedLabelColor:
                    Color.fromARGB(231, 41, 27, 3).withOpacity(0.5),
                isScrollable: true,
                indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(
                    width: 3,
                    color: Color.fromARGB(231, 41, 27, 3),
                  ),
                  insets: EdgeInsets.symmetric(horizontal: 16),
                ),
                labelStyle:
                    TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                labelPadding: EdgeInsets.symmetric(horizontal: 20),
                tabs: [
                  Tab(text: "Hot Coffee"),
                  Tab(text: "Cold Coffee"),
                  Tab(text: "Cappuiccino"),
                  Tab(text: "Americcino"),
                ],
              ),
              SizedBox(height: 10),
              Center(
                  child: [
                ItemsWidget(),
                ItemsWidget(),
                ItemsWidget(),
                ItemsWidget(),
              ][_tabController.index]),
            ],
          ),
        ),
      ),
      bottomNavigationBar: HomeBottomBar(),
    );
  }
}
