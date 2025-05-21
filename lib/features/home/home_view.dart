import 'package:flutter/material.dart';
import 'package:world_tech_website/features/home/widgets/contact_section.dart';
import 'package:world_tech_website/features/home/widgets/footer_section.dart';
import 'package:world_tech_website/features/home/widgets/hero_section.dart';
import 'package:world_tech_website/features/home/widgets/projects_section.dart';
import 'package:world_tech_website/features/home/widgets/service_section.dart';
import 'package:world_tech_website/features/home/widgets/team_section.dart';
import 'package:world_tech_website/features/projects/project_view.dart';
import '../../generated/assets.dart';

class HomeView extends StatefulWidget {
  final int scrollToSectionIndex;
  bool projectView;
  final ValueChanged<int>? onSectionChanged;
  final ValueChanged<bool>? onProjectChanged;
  HomeView({
    super.key,
    this.scrollToSectionIndex = 0,
    this.onSectionChanged,
    this.projectView = false, this.onProjectChanged,

  });

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final ScrollController _scrollController = ScrollController();

  final List<GlobalKey> sectionKeys = List.generate(5, (_) => GlobalKey());

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollToSection(widget.scrollToSectionIndex);
    });
  }



  void _onScroll() {
    for (int i = 0; i < sectionKeys.length; i++) {
      final context = sectionKeys[i].currentContext;
      if (context != null) {
        final box = context.findRenderObject() as RenderBox;
        final position = box.localToGlobal(Offset.zero, ancestor: null).dy;

        if (position <= 100) {
          widget.onSectionChanged?.call(i);
        }

        print(i);
      }
    }
  }

  @override
  void didUpdateWidget(HomeView oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.scrollToSectionIndex != widget.scrollToSectionIndex) {
      _scrollToSection(widget.scrollToSectionIndex);
    }
  }

  void _scrollToSection(int index) {
    if (index < 0 || index >= sectionKeys.length) {
      return;
    }

    final context = sectionKeys[index].currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: Duration(milliseconds: 200),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          widget.projectView
              ? ProjectView()
              : SingleChildScrollView(
                controller: _scrollController,
                child: Container(
                  key: sectionKeys[0],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 260.0),
                            child: Image.asset(
                              Assets.imagesBackgroundImageTest,
                              width: MediaQuery.of(context).size.width,
                              height: 1200,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Column(
                            children: [
                              HeroSection(),

                              ServiceSection(sectionKeys: sectionKeys),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        key: sectionKeys[2],
                        child: ProjectsSection(
                          projectView: () {
                            setState(() {
                              widget.projectView = true;
                              widget.onProjectChanged?.call(true);
                            });
                          },
                        ),
                      ),
                      Container(
                        key: sectionKeys[3],
                        child: SizedBox(height: 56),
                      ),
                      TeamSection(),
                      Container(
                        key: sectionKeys[4],
                        child: SizedBox(height: 150),
                      ),
                      ContactSection(),
                      SizedBox(height: 112),
                      FooterSection(),
                    ],
                  ),
                ),
              ),
    );
  }
}
