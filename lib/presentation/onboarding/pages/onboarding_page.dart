import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../shared/design_system/button_component/button_component.dart';
import '../../../shared/design_system/theme/theme.dart';
import '../cubits/cubits.dart';
import 'pages.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  late PageControllerCubit pageControllerCubit;

  @override
  void dispose() {
    pageControllerCubit.pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    pageControllerCubit = context.read<PageControllerCubit>();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(ThemeConstants.pagePadding),
        child: Column(
          children: [
            Expanded(
              child: PageView(
                physics: const NeverScrollableScrollPhysics(),
                controller: pageControllerCubit.pageController,
                children: const [
                  InfoOnBoardingPage(
                    title: 'Bem-vindo ao Khuda Lagce',
                    subTitle:
                        'Uma serenidade maravilhosa tomou conta de toda a minha alma, como estas doces manhãs de primavera que desfruto de todo o coração.',
                    image: 'assets/images/chef_onboarding.png',
                  ),
                  InfoOnBoardingPage(
                    title: 'Escolha seu produto',
                    subTitle:
                        'Mas para que vejas de onde nasce todo esse erro daqueles que acusam o prazer e elogiam a dor, abrirei todo o assunto.',
                    image: 'assets/images/supermarket_onboarding.png',
                  ),
                  InfoOnBoardingPage(
                    title: 'Receba no prazo',
                    subTitle:
                        'Pois ninguém despreza ou odeia ou foge do prazer porque é prazer, mas porque grandes dores os seguem.',
                    image: 'assets/images/skate_onboarding.png',
                  ),
                ],
              ),
            ),
            BlocBuilder<PageControllerCubit, int>(
              builder: (blocContext, int state) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ItemSliderWidget(
                      itemSelected: state == 0,
                    ),
                    const SizedBox(width: 12),
                    ItemSliderWidget(
                      itemSelected: state == 1,
                    ),
                    const SizedBox(width: 12),
                    ItemSliderWidget(
                      itemSelected: state == 2,
                    ),
                  ],
                );
              },
            ),
            const SizedBox(height: 20),
            const Divider(
              height: 1,
              color: DefaultColors.dividerColor,
            ),
            const SizedBox(height: 30),
            BlocBuilder<PageControllerCubit, int>(
              builder: (blocContext, int state) {
                return state < 2
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Pular',
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1
                                ?.copyWith(color: Colors.black),
                          ),
                          ButtonComponent(
                            onPressed: () {
                              pageControllerCubit.changePage(
                                pageControllerCubit.state + 1,
                              );
                            },
                            text: 'Próximo',
                            padding: const EdgeInsets.symmetric(),
                            rightIcon: Stack(
                              children: [
                                Container(
                                  height: double.infinity,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      ThemeConstants.buttonRoundedBorder,
                                    ),
                                    color: DefaultColors.secondaryColor,
                                  ),
                                  child: const Icon(
                                    Icons.chevron_right,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            borderRadius: ThemeConstants.buttonRoundedBorder,
                          ),
                        ],
                      )
                    : SizedBox(
                        width: double.infinity,
                        child: ButtonComponent(
                          onPressed: () {},
                          text: 'Iniciar',
                          borderRadius: ThemeConstants.buttonRoundedBorder,
                        ),
                      );
              },
            ),
            const SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}

class ItemSliderWidget extends StatelessWidget {
  const ItemSliderWidget({
    Key? key,
    required this.itemSelected,
  }) : super(key: key);

  final bool itemSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: itemSelected ? 25 : 7,
      height: 7,
      decoration: BoxDecoration(
        color: itemSelected
            ? DefaultColors.primaryColor
            : DefaultColors.backgroundSliderColor,
        borderRadius: BorderRadius.circular(25),
      ),
    );
  }
}
