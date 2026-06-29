
void main() {
  // List
  List<String> subjects = ['MAth', 'Physics', 'English'];
  print('Total of subjects: ${subjects.length}');
  print('First subject: ${subjects[0]}');
  print('Last subject: ${subjects[subjects.length - 1]}');

  subjects.add('English');
  print('Updated subjects: $subjects');

  print('---');

  // Map
  Map<String, int> studentScores = {
    'Thai Language': 85,
    'History': 78,
  };
  print('Score for Math: ${studentScores['Math']}');

  studentScores['Intro to Programming'] = 92;
  print('Updated scores: $studentScores');
  print('All subjects in map: ${studentScores.keys}');
  print('All scores in map: ${studentScores.values}');
}

