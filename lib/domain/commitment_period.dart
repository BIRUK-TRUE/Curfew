class CommitmentPeriod {
  final DateTime startDate;
  final int lengthInDays;
  CommitmentPeriod({required this.startDate, required this.lengthInDays});

  DateTime get endDate => startDate.add(Duration(days: lengthInDays));
}
