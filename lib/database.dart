

List<String> _statements = new List();

class Database {
  void add(String statement) {
    _statements.add(statement);
  }

  List<String> getStatements() {
    return _statements;
  }
  String getStatement(int index){
    if(index>_statements.length)throw Exception();
    return _statements[index];
  }
}
