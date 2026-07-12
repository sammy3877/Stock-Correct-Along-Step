enum LessonFeeType {
  fiftyThousand("5만원"),
  seventyThousand("7만원"),
  oneHundredThousand("10만원"),
  oneHundredFiftyThousand("15만원"),
  custom("직접 입력");

  final String displayName;

  const LessonFeeType(this.displayName);
}