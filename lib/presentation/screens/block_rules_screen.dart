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
        return ListTile(
          title: Text(blockRule.contentName),
          subtitle: Text(
            blockRule.commitmentPeriod == null
                ? '🔒 Permanent'
                : 'Locked until ${blockRule.commitmentPeriod!.endDate}',
          ),
        );
      },
    );
  }
}
