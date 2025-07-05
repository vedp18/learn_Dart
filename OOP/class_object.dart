
class NinjaTeam {
  // variables --> data or elements 
  String _teamName;
  String _mem1;
  String _mem2;
  String _mem3;
  int _teamNumber;

  
  String publicName = "This is public variable"; 


  // functions --> beahviour of data or elements

  /// Special function with same name as class name.
  NinjaTeam(this._teamName, this._mem1, this._mem2, this._mem3, this._teamNumber );


  /// getters

  // String getTeamName() => this._teamName;
  String get teamName => _teamName;

  // String getMem1() => this._mem1;
  String get mem1 => _mem1;
  
  // String getMem2() => this._mem2;
  String get mem2 => _mem2;
  
  // String getMem3() => this._mem3;
  String get mem3 => _mem3;

  // int getTeamNumber() => this._teamNumber;
  int get teamNumber => _teamNumber;


  /// setters

  // void setTeamName(String teamName) => this._teamName = teamName;
  set teamName(String teamName) => _teamName = teamName;

  set mem1(String mem1) => _mem1 = mem1;

  set mem2(String mem2) => _mem2 = mem2;

  set mem3(String mem3) => _mem3 = mem3;

  set teamNumber(int teamNumber) => _teamNumber = teamNumber;


}

void main(List<String> args) {
  NinjaTeam team1 = NinjaTeam("Team Kakkashi", "Naruto Uzumaki", "Sakura Harunai", "Sasuke Uchiha", 007);
  team1.mem1 = "Gaara";
  print(team1.mem1);

}
