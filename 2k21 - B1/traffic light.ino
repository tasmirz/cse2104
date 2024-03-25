#include <math.h>
// Non blocking exponential solution
//(Keeps the time required per loop nearly constant)
class Sonar {
  int trigger, echo;

 public:
  Sonar(int trigger, int echo) : trigger(trigger), echo(echo) {
    pinMode(trigger, OUTPUT);
    pinMode(echo, INPUT);
  }
  long getTime() {
    digitalWrite(trigger, LOW);
    delayMicroseconds(3);
    digitalWrite(trigger, HIGH);
    delayMicroseconds(3);
    long distance = pulseIn(echo, HIGH);
    return distance;
  }
  long getDistance() {
    long ret = 0.017 * getTime();
    return ret;
  }
};

Sonar s(9, 10);
int blink = 13, status = 12;
void setup() {
  Serial.begin(9600);
  pinMode(blink, OUTPUT);

  pinMode(status, OUTPUT);
}

unsigned long long count = 0;
long short_delay = 1;
long distance = 0;
bool now_what = 1;
int cnt = 0;
void loop() {
  Serial.println(short_delay);
  if (count % 100 == 0) {
    distance = s.getDistance();
    //    count+=(6+distance/0.017); //
    short_delay = 2 * pow(2, distance / 8);
    digitalWrite(blink, LOW);
    digitalWrite(status, LOW);
  } else {
    if (distance > 2 && distance < 50) {
      digitalWrite(status, HIGH);
      if (now_what) {
        // Serial.println("reach");
        digitalWrite(blink, HIGH);
      } else {
        digitalWrite(blink, LOW);
      }
    }
    if (count % short_delay == 0) {
      if (now_what) {
        now_what = 0;
      } else {
        now_what = 1;
      }
    }
  }
  count++;
  // delayMicroseconds(10000);
  delay(1);
}
