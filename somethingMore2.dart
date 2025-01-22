void main(List<String> args) {
  final jsoned = {
      "userId": 1,
      "id": 1,
      "title": "HLEhhdashLkj lkjshdf we;sklfdhoiwes flkdjg",
      "body": "lhslkhlsk sdhk lksd loew fksdlfkl lskdfl  ksldf j00oew kdsjfoije wsfs dha9sdfy9pe e fhshew ; sfdoihf"
  };

  final {'userId': userId, 'title': title, 'body': b} = jsoned;
  print("UserId: $userId, Title: $title, Body: $b");  
  // Output: UserId: 1, Title: HLEhhdashLkj lkjshdf we;sklfdhoiwes flkdjg, Body: lhslkhlsk sdhk lksd loew fksdlfkl lskdfl  ksldf j00oew kdsjfoije wsfs dha9sdfy9pe e fhshew ; sfdoihf

  // another way to do it using special if format
  // it will give error since final keyword is not used, So we use to provide its type instead of final
  if(jsoned case {'userId': int userId, 'title': String title, 'body':  String b}){
    print("UserId: $userId, Title: $title, Body: $b");  
  }
  else{
    print("incorrect jsoned");
  }
  // Output: UserId: 1, Title: HLEhhdashLkj lkjshdf we;sklfdhoiwes flkdjg, Body: lhslkhlsk sdhk lksd loew fksdlfkl lskdfl  ksldf j00oew kdsjfoije wsfs dha9sdfy9pe e fhshew ; sfdoihf

  // similarly it can be implemented using switch case

}