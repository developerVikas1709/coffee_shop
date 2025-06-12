import 'package:carousel_slider/carousel_slider.dart';
import 'package:coffee_shop/coffee_products.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:coffee_shop/details_product.dart';
import 'package:coffee_shop/product.dart';
import 'package:coffee_shop/theme_provider.dart';
import 'package:coffee_shop/products.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  final ScrollController _scrollController = ScrollController();
  TextEditingController _searchController = TextEditingController();
  FocusNode _focusNode = FocusNode();

  late TabController tabController;
  List<String> imagesList = [
    "assets/Banner.png",
    "assets/coffe.jpg",
    "assets/coffee23.jpg",
    "assets/coffee234.avif",
    "assets/coffee2345.avif",
  ];
  int curruntIndex = 0;

  List<Products> filteredCoffees = [];
  int itemCount = 20;
  bool _isLoading = false;

  final List<Tab> tabs = [
    Tab(text: "All Coffee"),
    Tab(text: "Machiato"),
    Tab(text: "Latte"),
    Tab(text: "American"),
  ];

  final List<String> categories = [
    "Sort by Name (A-Z)",
    "Sort by Price (Low-High)",
    "Sort by Price (High-Low)"
  ];

  String selectedCategory = "All Coffee";

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: tabs.length, vsync: this);

    tabController.addListener(() {
      if (!tabController.indexIsChanging) {
        setState(() {
          selectedCategory = tabs[tabController.index].text!;
          _filterByCategory(selectedCategory);
          itemCount = 20;
        });
      }
    });

    filteredCoffees = List.from(MyProducts.allCoffees);

    _searchController.addListener(_onSearchChanged);

    _scrollController.addListener(() {
      if (_scrollController.position.pixels >=
              _scrollController.position.maxScrollExtent - 100 &&
          !_isLoading) {
        _loadMoreItems();
      }
    });
  }

  void _filterByCategory(String category) {
    String query = _searchController.text.toLowerCase();
    setState(() {
      filteredCoffees = MyProducts.allCoffees.where((coffee) {
        final matchesQuery = (coffee.tital ?? '').toLowerCase().contains(query);
        final matchesCategory = selectedCategory == "All Coffee" ||
            (coffee.category ?? '').toLowerCase() ==
                selectedCategory.toLowerCase();

        return matchesQuery && matchesCategory;
      }).toList();
      itemCount = 20;
    });
  }

  void _onSearchChanged() {
    _filterByCategory(selectedCategory);
  }

  void _loadMoreItems() async {
    if (itemCount >= filteredCoffees.length) return;

    setState(() {
      _isLoading = true;
    });

    await Future.delayed(Duration(seconds: 2));

    setState(() {
      itemCount = (itemCount + 10).clamp(0, filteredCoffees.length);
      _isLoading = false;
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    tabController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void _sortFilteredCoffees(String sortBy) {
    setState(() {
      if (sortBy == "Sort by Name (A-Z)") {
        filteredCoffees.sort((a, b) => a.tital.compareTo(b.tital));
      } else if (sortBy == "Sort by Price (Low-High)") {
        filteredCoffees.sort((a, b) =>
            double.parse(a.price.replaceAll(RegExp(r'[^\d.]'), '')).compareTo(
                double.parse(b.price.replaceAll(RegExp(r'[^\d.]'), ''))));
      } else if (sortBy == "Sort by Price (High-Low)") {
        filteredCoffees.sort((a, b) =>
            double.parse(b.price.replaceAll(RegExp(r'[^\d.]'), '')).compareTo(
                double.parse(a.price.replaceAll(RegExp(r'[^\d.]'), ''))));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              SizedBox(
                child: Container(
                  width: double.infinity,
                  height: 280,
                  color: Theme.of(context).brightness == Brightness.dark
                      ? const Color.fromARGB(255, 30, 8, 8)
                      : const Color.fromARGB(255, 113, 9, 24),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 50),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Location",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Theme.of(context).brightness ==
                                              Brightness.dark
                                          ? const Color.fromARGB(
                                              255, 128, 128, 128)
                                          : const Color.fromARGB(
                                              255, 255, 255, 255),
                                    ),
                                  ),
                                  Text(
                                    "Bilzen, Tanjungbalai",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Theme.of(context).brightness ==
                                                Brightness.dark
                                            ? const Color.fromARGB(
                                                255, 171, 171, 171)
                                            : const Color.fromARGB(
                                                255, 255, 255, 255),
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              Consumer<ThemeProvider>(
                                builder: (_, provider, __) {
                                  return Transform.scale(
                                    scale: 0.6,
                                    child: Switch.adaptive(
                                      activeColor: Colors.white,
                                      inactiveThumbColor:
                                          Color.fromARGB(255, 255, 255, 255),
                                      activeTrackColor: Color(0xffbc2424),
                                      inactiveTrackColor: Color(0xffbc2424),
                                      value: provider.getThemeValue(),
                                      onChanged: (val) {
                                        provider.updateTheme(value: val);
                                      },
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 20, left: 16, right: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 7,
                              child: Container(
                                height: 52,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Theme.of(context).brightness ==
                                            Brightness.dark
                                        ? Color.fromARGB(255, 97, 86, 87)
                                        : Color(0xff9c8384)),
                                child: WillPopScope(
                                  onWillPop: () async {
                                    if (_focusNode.hasFocus) {
                                      _focusNode.unfocus();
                                      return false;
                                    }
                                    return true;
                                  },
                                  child: TextField(
                                    focusNode: _focusNode,
                                    controller: _searchController,
                                    cursorColor: Color(0xff3c040c),
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Color(0xff3c040c),
                                        fontWeight: FontWeight.w500),
                                    decoration: InputDecoration(
                                      hintText: "Search Coffee",
                                      hintStyle: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xff3c040c)),
                                      prefixIcon: Icon(
                                        Icons.search,
                                        color: Color(0xff3c040c),
                                      ),
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide.none),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 15),
                            PopupMenuButton<String>(
                              onSelected: (value) {
                                _sortFilteredCoffees(value);
                              },
                              color:
                                  Theme.of(context).appBarTheme.backgroundColor,
                              itemBuilder: (context) {
                                return categories
                                    .map((e) => PopupMenuItem<String>(
                                          value: e,
                                          child: Text(e),
                                        ))
                                    .toList();
                              },
                              child: Container(
                                height: 52,
                                width: 52,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Theme.of(context).brightness ==
                                          Brightness.dark
                                      ? const Color.fromARGB(255, 113, 30, 30)
                                      : const Color(0xffcc5454),
                                ),
                                child: Center(
                                    child: Icon(
                                  FontAwesomeIcons.sliders,
                                  color: Color.fromARGB(255, 207, 198, 198),
                                  size: 16,
                                )),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 200),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 150,
                          width: MediaQuery.of(context).size.width * 1 / 1,
                          child: CarouselSlider(
                              items: imagesList
                                  .map((item) => Container(
                                        margin: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            image: DecorationImage(
                                                image: AssetImage(item),
                                                fit: BoxFit.fill)),
                                      ))
                                  .toList(),
                              options: CarouselOptions(
                                autoPlayCurve: Curves.linear,
                                height: 150,
                                autoPlay: true,
                              
                                enlargeCenterPage: true,
                                aspectRatio: 16 / 9,
                                onPageChanged: (index, reason) {
                                  setState(() {
                                    curruntIndex = index;
                                  });
                                },
                              )),
                        ),
                        SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: imagesList.asMap().entries.map((entry) {
                            return Container(
                              height: 7,
                              width: 6,
                              margin: const EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: curruntIndex == entry.key
                                    ? Theme.of(context).brightness ==
                                            Brightness.dark
                                        ? const Color.fromARGB(255, 113, 30, 30)
                                        : const Color(0xffcc5454)
                                    : Theme.of(context).brightness ==
                                            Brightness.dark
                                        ? const Color.fromARGB(
                                            255, 189, 189, 189)
                                        : const Color.fromARGB(255, 78, 78, 78),
                              ),
                            );
                          }).toList(),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ]),
            SizedBox(height: 1),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 35,
                child: TabBar(
                  controller: tabController,
                  tabs: tabs,
                  indicatorSize: TabBarIndicatorSize.tab,
                  dividerHeight: 0,
                  labelPadding: EdgeInsets.all(5),
                  labelColor: Colors.white,
                  unselectedLabelColor:
                      Theme.of(context).brightness == Brightness.dark
                          ? const Color.fromARGB(255, 255, 255, 255)
                          : const Color.fromARGB(255, 21, 21, 21),
                  indicator: BoxDecoration(
                    color: Theme.of(context).brightness == Brightness.dark
                        ? const Color.fromARGB(255, 113, 30, 30)
                        : const Color(0xffcc5454),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  labelStyle:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  unselectedLabelStyle: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: MediaQuery.of(context).size.height / 1 / 1.4,
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: TabBarView(
                controller: tabController,
                children: List.generate(tabs.length, (index) {
                  return RefreshIndicator(
                    backgroundColor: Colors.white,
                    color: Color(0xffb31814),
                    onRefresh: () async {
                      _filterByCategory(tabs[index].text!);
                    },
                    child: GridView.builder(
                      controller: _scrollController,
                      padding: EdgeInsets.only(top: 10),
                      itemCount:
                          (_isLoading && itemCount < filteredCoffees.length)
                              ? itemCount + 1
                              : itemCount.clamp(0, filteredCoffees.length),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        childAspectRatio: 0.7,
                      ),
                      itemBuilder: (context, index) {
                        if (index >= filteredCoffees.length) {
                          return Center(child: CircularProgressIndicator());
                        }

                        final product = filteredCoffees[index];
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailsProduct(
                                  products: product,
                                ),
                              ),
                            );
                          },
                          child: ProductCard(products: product, product: index),
                        );
                      },
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
