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

#ifndef BUZZER_BUZZERLOCALADAPTOR_HPP
#define BUZZER_BUZZERLOCALADAPTOR_HPP

#include <iostream>
#include <map>
#include <string>
#include <unistd.h>
#include <thread>
#include <chrono>

#include "global/PitchMap.hpp"

#define OUTPUT 1


inline constexpr void pinMode(int pin, int w) {}

inline void tone(int pin, unsigned int pitch) {
}

inline void delay(long dur) {
//	std::cout << "Sleep for " << dur << " ms" << std::endl;
	std::this_thread::sleep_for(std::chrono::milliseconds(dur));
}

inline void noTone(int pin) {
//	std::cout << "Pin " << pin << " stopped" << std::endl;
}

#endif //BUZZER_BUZZERLOCALADAPTOR_HPP
