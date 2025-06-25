part of 'customs.dart';

class CustomNavBar extends StatelessWidget {
  final NavBarConfig navBarConfig;
  final NavBarDecoration navBarDecoration;

  const CustomNavBar({
    super.key,
    required this.navBarConfig,
    this.navBarDecoration = const NavBarDecoration(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 20.0,
          offset: Offset(-2.0, 0),
        ),
      ],
    ),
  });

  Widget _buildItem(ItemConfig item, bool isSelected) {
    return Container(
      height: 50,
      width: 82.5,
      padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 30),
      decoration: BoxDecoration(
        color: isSelected ? AppColors.primary : AppColors.lightGray,
        // rounded corners
        borderRadius: const BorderRadius.all(Radius.circular(100)),
      ),
      child: SvgPicture(
        (item.icon as SvgPicture).bytesLoader,
        colorFilter: ColorFilter.mode(
          isSelected ? AppColors.white : AppColors.lightGray,
          BlendMode.srcIn,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DecoratedNavBar(
      decoration: navBarDecoration,
      height: navBarConfig.navBarHeight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          for (final (index, item) in navBarConfig.items.indexed)
            InkWell(
              // This is the most important part. Without this, nothing would happen if you tap on an item.
              onTap: () => navBarConfig.onItemSelected(index),
              child: _buildItem(item, navBarConfig.selectedIndex == index),
            ),
        ],
      ),
    );
  }
}
