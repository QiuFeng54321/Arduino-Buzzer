#ifdef USE_ARDUINO
#include <Arduino.h>
#else

#include "BuzzerLocalAdaptor.hpp"

#endif
#include "User_Setup.h"
#include "Music.hpp"
#include "Music.cpp"

const int buzz_pin = 8;
//
//int freq = 0;
//NoteAction patternStart_action[]{
//		{0.5, Pitch::NOTE_C5},
//		{1.5, Pitch::NOTE_C5},
//		{1,   Pitch::NOTE_G5},
//		{0.5, Pitch::NOTE_G5},
//		{0.5, Pitch::NOTE_E5},
//		{1.5, Pitch::NOTE_F5},
//		{0.5, Pitch::NOTE_G5},
//		{1,   Pitch::NOTE_E5},
//		{1,   Pitch::NOTE_G5},
//};
//int act_size = sizeof(patternStart_action) / sizeof(NoteAction);
//Tempo tempo{120};
//Pattern patternStart(patternStart_action, act_size);
//
//
//Pattern patternList[]{patternStart};
//
//int pat_size = sizeof(patternList) / sizeof(Pattern);
//
//Channel channel(patternList, pat_size, buzz_pin);

//Include the header which contains the generated song info
#include "Play_Music.hpp"

void setup() {
	pinMode(buzz_pin, OUTPUT);
//	delay(1000);
	//There is only one buzzer, only play the main track
//#ifdef USE_ARDUINO
	Serial.begin(9600);
	Serial.println("HI");
//#endif
}


void loop() {
//Serial.println("Loop");

	channel3.play(tempo);
}

//extern int main();

#ifndef USE_ARDUINO

#endif