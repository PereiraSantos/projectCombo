
class Convert {

  static int convertDecimal(int value) {

    int num = value;

    int decValue = 0;

    int base = 1;

    int temp = num;

    while(temp > 0){
      int lastDigit = temp % 10;
      temp = temp ~/ 10;
      decValue += lastDigit * base;
      base = base * 2;
    }
    return decValue;
  }
}