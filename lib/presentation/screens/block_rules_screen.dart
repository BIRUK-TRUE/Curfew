import 'package:curfew/domain/content_category.dart';
import 'package:curfew/presentation/theme/app_theme.dart';
import 'package:curfew/presentation/widgets/category_badge.dart';
import 'package:flutter/material.dart';
import '../../domain/block_rule.dart';

class BlockRulesScreen extends StatelessWidget {
  final List<BlockRule> blockRules;
  const BlockRulesScreen({super.key, required this.blockRules});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: blockRules.length,
      itemBuilder: (context, index) {
        final blockRule = blockRules[index];
        return Card(
          color: AppColors.card,
          child: ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(blockRule.contentName, style: AppTextStyles.title),
                if (blockRule.contentCategory == ContentCategory.adultContent)
                  CategoryBadge(label: 'Adult', color: AppColors.permanentBlock)
                else
                  CategoryBadge(label: 'Social', color: AppColors.accent),
              ],
            ),
            subtitle: Text(
              blockRule.commitmentPeriod == null
                  ? '🔒 Permanent'
                  : 'Locked until ${blockRule.commitmentPeriod!.endDate}',
              style: AppTextStyles.body,
            ),
          ),
        );
      },
    );
  }
}
