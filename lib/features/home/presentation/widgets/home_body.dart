part of '../home.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
    required this.liveStreamsState,
    required this.controller,
  });

  final LiveStreamsState liveStreamsState;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeSearchCubit, HomeSearchState>(
      buildWhen: (p, c) =>
          p.isSearchMode != c.isSearchMode ||
          p.isLoading != c.isLoading ||
          p.query != c.query ||
          p.streams != c.streams ||
          p.errorMessage != c.errorMessage,
      builder: (context, s) {
        return AnimatedSwitcher(
          duration: const Duration(milliseconds: 200),
          switchInCurve: Curves.easeOut,
          switchOutCurve: Curves.easeIn,
          child: s.isSearchMode
              ? HomeSearchResult(
                  key: const ValueKey('search'),
                )
              : HomeContent(
                  key: const ValueKey('home'),
                  liveStreamsState: liveStreamsState,
                ),
        );
      },
    );
  }
}
