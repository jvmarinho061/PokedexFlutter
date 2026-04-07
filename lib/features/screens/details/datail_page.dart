import 'package:flutter/material.dart';
import 'package:projetopokedex/common/models/pokemon.dart';
import 'package:projetopokedex/features/screens/details/detail_controller.dart';
import 'package:projetopokedex/features/screens/details/widgets/detail_app_bar_widget.dart';
import 'package:projetopokedex/features/screens/details/widgets/detail_description_list_widget.dart';
import 'package:projetopokedex/features/screens/details/widgets/detail_list_widget.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({
    super.key,
    required this.pokemon,
    required this.list,
    required this.onBack,
    required this.controller,
    required this.onChangePokemon, 
    required this.pageController,
  });
  final Pokemon pokemon;
  final List<Pokemon> list;
  final VoidCallback onBack;
  final DetailController controller;
  final PageController pageController;
  final ValueChanged<Pokemon> onChangePokemon;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  late ScrollController scrollController;

  bool isOnTop = true;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
    widget.controller.loadDescription(widget.pokemon.name);
  }

  @override
  void didUpdateWidget(covariant DetailPage oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.pokemon.name != widget.pokemon.name) {
      widget.controller.loadDescription(widget.pokemon.name);
    }
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final controller = widget.controller;

    return Scaffold(
      body: NotificationListener<ScrollNotification>(
        onNotification: (notification) {
          final isTop = scrollController.position.pixels <= 36;

          if (isTop != isOnTop) {
            setState(() => isOnTop = isTop);
          }

          return false;
        },
        child: CustomScrollView(
          controller: scrollController,
          physics: const ClampingScrollPhysics(),
          slivers: [
            DetailAppBarWidget(
              pokemon: widget.pokemon,
              onBack: widget.onBack,
              isOnTop: isOnTop,
            ),
            DetailListWidget(
              pokemon: widget.pokemon,
              list: widget.list,
              controller: widget.pageController,
              onChangePokemon: widget.onChangePokemon,
            ),
            SliverFillRemaining(
              child: Stack(
                children: [
                  Container(color: widget.pokemon.baseColor),
                  Container(
                    padding: const EdgeInsets.all(16),
                    constraints: BoxConstraints(
                      minHeight:
                          MediaQuery.of(context).size.height * 0.5,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.8),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      ),
                    ),
                    child: AnimatedBuilder(
                      animation: controller,
                      builder: (_, __) {
                        if (controller.isLoading) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                        if (controller.error != null) {
                          return const Center(
                            child: Text('Erro ao carregar descrição'),
                          );
                        }
                        final data = controller.description;
                        if (data == null) {
                          return const SizedBox();
                        }
                        return DetailDescriptionListWidget(
                          data: data,
                        );
                      },
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
}