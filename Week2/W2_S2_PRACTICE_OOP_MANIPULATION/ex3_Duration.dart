class CustomsDuration {
  int _milliseconds;

  CustomsDuration({required int milliseconds})
      : this._milliseconds = milliseconds.abs(); //name Contructor

  CustomsDuration.fromHours(int hours)
      : this._milliseconds = hours.abs() * 3600 * 1000;

  CustomsDuration.fromMinutes(int minutes)
      : this._milliseconds = minutes.abs() * 60 * 1000;
  CustomsDuration.fromSecond(int seconds)
      : this._milliseconds = seconds.abs() * 1000;
  bool operator >(CustomsDuration c) {
    if (this._milliseconds > c._milliseconds) {
      return true;
    }
    return false;
  }
  CustomsDuration operator + (CustomsDuration c){
    return CustomsDuration(milliseconds: this._milliseconds + c._milliseconds);
  }
  CustomsDuration operator - (CustomsDuration c){
    if(c._milliseconds > this._milliseconds)
    {
      throw Exception("ERROR-168 -- First Duration must be greater or equal to the Second Duration!! -- Thank You");
    }
    return CustomsDuration(milliseconds: this._milliseconds - c._milliseconds);
    
  }
  String toString()
  {
    return 'Daration: $_milliseconds ms';
  }
}

void main() {
  CustomsDuration customsDuration = CustomsDuration(milliseconds: 5000);
  print(customsDuration);
  CustomsDuration customsDuration1 = CustomsDuration(milliseconds: 1000);

  print(customsDuration1);
  var temp1 = customsDuration + customsDuration1;
  print('\nSum: '+ temp1._milliseconds.toString()+'ms');

  var temp2 = customsDuration - customsDuration1; 
  print('Minus: '+temp2._milliseconds.toString()+'ms');
}
