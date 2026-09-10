import 'package:flutter/material.dart';
import 'domain/block_rule.dart';
import 'domain/commitment_period.dart';
import 'domain/content_category.dart';
import 'presentation/screens/block_rules_screen.dart';

List<BlockRule> _defaultBlockRules() {
  final today = DateTime.now();

  return [
    BlockRule(
      id: 'adult-content-permanent',
      contentName: 'Adult content',
      contentCategory: ContentCategory.adultContent,
    ),
    BlockRule(
      id: 'social-7-days',
      contentName: 'Social media',
      commitmentPeriod: CommitmentPeriod(startDate: today, lengthInDays: 7),
      contentCategory: ContentCategory.social,
    ),
    BlockRule(
      id: 'social-30-days',
      contentName: 'Social media detox',
      commitmentPeriod: CommitmentPeriod(startDate: today, lengthInDays: 30),
      contentCategory: ContentCategory.social,
    ),
  ];
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Curfew',
      // when there was no scaffold in this line it was showing me an error what is the resone
      home: Scaffold(body: BlockRulesScreen(blockRules: _defaultBlockRules())),
    );
  }
}
