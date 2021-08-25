import 'package:chateo/shared/theme/app_colors.dart';
import 'package:chateo/shared/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class TileWidget extends StatelessWidget {

  final String personName;
  final String status;
  final String date;
  final String totalMessagesNotRead;
  final VoidCallback? onTap;

  const TileWidget({
    Key? key,
    required this.personName,
    required this.status,
    this.date = '',
    this.totalMessagesNotRead = '',
    this.onTap
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new ListTile(
      onTap: onTap,
      contentPadding: EdgeInsets.zero,
      leading: new Container(
        height: 48,
        width: 48,
        decoration: new BoxDecoration(
          color: AppColors.primary.withOpacity(0.85),
          borderRadius: BorderRadius.circular(16),
        ),
        child: new Center(
          child: new Text(
            _getInitials(),
            style: AppTextStyles.titleListTileBackground,
          ),
        ),
      ),
      title: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          new Text(
            personName,
            overflow: TextOverflow.ellipsis,
            style: AppTextStyles.titleListTile,
          ),
          if (date.isNotEmpty)
            new Text(
              date,
              style: AppTextStyles.captionDate,
            ),
        ],
      ),
      subtitle: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          new Text(
            status,
            overflow: TextOverflow.ellipsis,
            style: AppTextStyles.captionBody,
          ),
          if (totalMessagesNotRead.isNotEmpty)
            new Container(
              padding: const EdgeInsets.symmetric(
                vertical: 4,
                horizontal: 8
              ),
              decoration: new BoxDecoration(
                color: AppColors.primary.withOpacity(0.30),
                borderRadius: BorderRadius.circular(8)
              ),
              child: new Text(
                totalMessagesNotRead,
                style: AppTextStyles.captionPrimary,
              ),
            )
        ],
      ),
    );
  }

  String _getInitials() {
    var arrNames = personName.split(' ');
    return '${arrNames[0][0]}${arrNames[1][0]}';
  }
}
