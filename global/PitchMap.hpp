//
// Created by Qiufeng54321 on 2019-09-25.
// Copyright (C) 2019  Qiufeng54321
//
//    This program is free software: you can redistribute it and/or modify
//    it under the terms of the GNU General Public License as published by
//    the Free Software Foundation, either version 3 of the License, or
//    (at your option) any later version.
//
//    This program is distributed in the hope that it will be useful,
//    but WITHOUT ANY WARRANTY; without even the implied warranty of
//    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//    GNU General Public License for more details.
//
//    You should have received a copy of the GNU General Public License
//    along with this program.  If not, see <https://www.gnu.org/licenses/>.
//

#ifndef BUZZER_PITCHMAP_HPP
#define BUZZER_PITCHMAP_HPP

#ifndef USE_ARDUINO

#include <map>
#include <string>

#endif

inline std::map<int, std::string> pitchMap{
		{31,   "NOTE_B0"},
		{33,   "NOTE_C1"},
		{35,   "NOTE_CS1"},
		{37,   "NOTE_D1"},
		{39,   "NOTE_DS1"},
		{41,   "NOTE_E1"},
		{44,   "NOTE_F1"},
		{46,   "NOTE_FS1"},
		{49,   "NOTE_G1"},
		{52,   "NOTE_GS1"},
		{55,   "NOTE_A1"},
		{58,   "NOTE_AS1"},
		{62,   "NOTE_B1"},
		{65,   "NOTE_C2"},
		{69,   "NOTE_CS2"},
		{73,   "NOTE_D2"},
		{78,   "NOTE_DS2"},
		{82,   "NOTE_E2"},
		{87,   "NOTE_F2"},
		{93,   "NOTE_FS2"},
		{98,   "NOTE_G2"},
		{104,  "NOTE_GS2"},
		{110,  "NOTE_A2"},
		{117,  "NOTE_AS2"},
		{123,  "NOTE_B2"},
		{131,  "NOTE_C3"},
		{139,  "NOTE_CS3"},
		{147,  "NOTE_D3"},
		{156,  "NOTE_DS3"},
		{165,  "NOTE_E3"},
		{175,  "NOTE_F3"},
		{185,  "NOTE_FS3"},
		{196,  "NOTE_G3"},
		{208,  "NOTE_GS3"},
		{220,  "NOTE_A3"},
		{233,  "NOTE_AS3"},
		{247,  "NOTE_B3"},
		{262,  "NOTE_C4"},
		{277,  "NOTE_CS4"},
		{294,  "NOTE_D4"},
		{311,  "NOTE_DS4"},
		{330,  "NOTE_E4"},
		{349,  "NOTE_F4"},
		{370,  "NOTE_FS4"},
		{392,  "NOTE_G4"},
		{415,  "NOTE_GS4"},
		{440,  "NOTE_A4"},
		{466,  "NOTE_AS4"},
		{494,  "NOTE_B4"},
		{523,  "NOTE_C5"},
		{554,  "NOTE_CS5"},
		{587,  "NOTE_D5"},
		{622,  "NOTE_DS5"},
		{659,  "NOTE_E5"},
		{698,  "NOTE_F5"},
		{740,  "NOTE_FS5"},
		{784,  "NOTE_G5"},
		{831,  "NOTE_GS5"},
		{880,  "NOTE_A5"},
		{932,  "NOTE_AS5"},
		{988,  "NOTE_B5"},
		{1047, "NOTE_C6"},
		{1109, "NOTE_CS6"},
		{1175, "NOTE_D6"},
		{1245, "NOTE_DS6"},
		{1319, "NOTE_E6"},
		{1397, "NOTE_F6"},
		{1480, "NOTE_FS6"},
		{1568, "NOTE_G6"},
		{1661, "NOTE_GS6"},
		{1760, "NOTE_A6"},
		{1865, "NOTE_AS6"},
		{1976, "NOTE_B6"},
		{2093, "NOTE_C7"},
		{2217, "NOTE_CS7"},
		{2349, "NOTE_D7"},
		{2489, "NOTE_DS7"},
		{2637, "NOTE_E7"},
		{2794, "NOTE_F7"},
		{2960, "NOTE_FS7"},
		{3136, "NOTE_G7"},
		{3322, "NOTE_GS7"},
		{3520, "NOTE_A7"},
		{3729, "NOTE_AS7"},
		{3951, "NOTE_B7"},
		{4186, "NOTE_C8"},
		{4435, "NOTE_CS8"},
		{4699, "NOTE_D8"},
		{4978, "NOTE_DS8"},
};

#endif //BUZZER_PITCHMAP_HPP
