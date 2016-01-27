public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String r = new String();
  String r2 = new String();
  for(int i = 0; i < word.length(); i++){
    if(Character.isUpperCase(word.charAt(i)) == true){
      r = r + Character.toLowerCase(word.charAt(i));
    }else if(Character.isWhitespace(word.charAt(i)) == true || Character.isLetter(word.charAt(i)) == false){

    }else{
      r = r + word.charAt(i);
    }
  }
  for(int n = r.length()-1; n >= 0; n--){
    r2 = r2 + r.charAt(n);
  }
  System.out.println(r);
  System.out.println(r2);
  if(r2.equals(r) == true){
    return true;
  }else{
    return false;
  }

}
