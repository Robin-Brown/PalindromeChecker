public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " Is a palindrome.");
    }
    else
    {
      println(lines[i] + " is not a palindrome.");
    }
  }
}

public boolean palindrome(String word)
{
  int a=word.length()-1;
  String wordz="";
  for(int i=0;i<=a;i++){
    if(word.substring(i,i+1).equals(" ")&&Character.isLetter(word.charAt(i))){
    }
    else{
      wordz+=word.substring(i,i+1).toLowerCase();
    }
  }
  if(reverse(word).equals(wordz)){
    return true;
  }
  else{
    return false;
  }
}

public String reverse(String str)
{
    String sNew = new String();
    for(int i=str.length()-1;i>=0;i--){
      if(str.substring(i,i+1).equals(" ")&&Character.isLetter(str.charAt(i))){
      }
      else{
        sNew+=str.substring(i,i+1).toLowerCase();
      }
    }
    return sNew;
}
