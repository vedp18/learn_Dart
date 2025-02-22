void main(List<String> args) {
  
  final l1 = [1,2,3];
  final [p,q,r] = l1;

  print("$p, $q, $r");    // Output: 1, 2, 3

  final l2 = [1,2,3,4,5,6,7,8,9];
  // final [a,b,c] = l2;   // it gives error 
  // final [a, b, c, ...] = l2;    // it doesn't gives error So it allocates first three elements to variable a b c

  // but what if we want to access rest of others, So to do 
  final [a,b,c,...d] = l2;

  print("$a, $b, $c, $d");    // Output: 1, 2, 3, [4, 5, 6, 7, 8, 9]
  
  // suppose we doesn't want some middle element 
  final [x,_,z,...v] = l2;    // we have to neglect y so we use _ instead
  print("$x, $z, $v");    // Output: 1, 3, [4, 5, 6, 7, 8, 9]
}