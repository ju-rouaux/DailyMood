enum Mood {
  happy,
  neutral,
  sad,
  bored,
  angry,
  anxious,
  thrilled,
  inLove,
  bitter,
}

extension MoodExtension on Mood {
  String get toEmoji {
    switch (this) {
      case Mood.happy:
        return '😄';
      case Mood.neutral:
        return '😐';
      case Mood.sad:
        return '😢';
      case Mood.bored:
        return '🥱';
      case Mood.angry:
        return '😠';
      case Mood.anxious:
        return '😰';
      case Mood.thrilled:
        return '🤩';
      case Mood.inLove:
        return '😍';
      case Mood.bitter:
        return '😒';
      default:
        return '';
    }
  }

  String get toText {
    switch (this) {
      case Mood.happy:
        return "Happy";
      case Mood.neutral:
        return "Neutral";
      case Mood.sad:
        return "Sad";
      case Mood.bored:
        return "Bored";
      case Mood.angry:
        return "Angry";
      case Mood.anxious:
        return "Anxious";
      case Mood.thrilled:
        return "Thrilled";
      case Mood.inLove:
        return "In love";
      case Mood.bitter:
        return "Bitter";
      default:
        return '';
    }
  }
}