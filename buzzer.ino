#include <Arduino.h>
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
	//There is only one buzzer, only play the main track
	channel2.play(tempo);
}


void loop() {

}
