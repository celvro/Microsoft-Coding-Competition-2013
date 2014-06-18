#include<iostream>
#include<iomanip>
#include<cmath>
using namespace std;

double secToAngle( int sec ){
  return sec*6.0;
}

double minToAngle( int min, int sec ){
  return min*6.0 + sec*6.0/60;
}

double hourToAngle( int hour, int min, int sec ){
  if(hour==12) hour=0;
  return hour*30.0 + min*30.0/60 + sec*30.0/3600;
}

double round( double x ){
  return floor(x*100 +.5)/100;
}

void printAngle( double angle ){
  if( angle > 180 ) angle = 360 - angle;
}

int main()
{
  cout<<setprecision(2)<<fixed;
  int lines, hour, min, sec;
  double hourToMin, hourToSec, minToSec;
  
  cin>>lines;
  cout<<lines<<endl;
  for(int i=0; i<lines; i++){
    cin>>hour;
    cin.get();
    cin>>min;
    cin.get();
    cin>>sec;
    hourToMin = abs(hourToAngle(hour, min, sec) - minToAngle(min, sec));
    hourToSec = abs(hourToAngle(hour, min, sec) - secToAngle(sec));
    minToSec = abs(minToAngle(min, sec) - secToAngle(sec));
    if( hourToMin > 180 ) hourToMin = 360-hourToMin;
    if( hourToSec > 180 ) hourToSec = 360-hourToSec;
    if( minToSec > 180 ) minToSec = 360-minToSec;
    cout<<round(hourToMin)<<", "
        <<round(hourToSec)<<", "
        <<round(minToSec)<<endl;
  }
  
  return 0;
}
