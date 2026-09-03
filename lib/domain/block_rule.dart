import 'commitment_period.dart';
import 'content_category.dart';

class BlockRule {
  final String id;
  final  String  contentName;
  final CommitmentPeriod? commitmentPeriod;
  final ContentCategory contentCategory;
  BlockRule({required this.id, required this.contentName, this.commitmentPeriod, required this.contentCategory});
}
