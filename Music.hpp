//
// Created by Qiufeng54321 on 2019-09-21.
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

#ifndef BUZZER_MUSIC_HPP
#define BUZZER_MUSIC_HPP

#include "global/PITCH.hpp"

enum class Pitch : unsigned int;

/**
 * Stores the speed of a note
 */
struct Tempo {
	double tempo;

	Tempo(double tempo = 60);

	/**
	 * calculates the actual length of a relative duration
	 *
	 * @param relativeDuration
	 * @return the actual length in milliseconds
	 */
	long getLen(double relativeDuration);

	/**
	 * A static method of member *getLen*
	 * @param tempo
	 * @param relativeDuration
	 * @return
	 */
	static long getLen(double tempo, double relativeDuration);
};

class Note {
public:
	Pitch pitch;

	Note(Pitch pitch);

	void play(int port, double dur = 1, Tempo tempo = {});
};

struct NoteAction {
	bool isEmpty = false;
	double duration;
	Note *note;

	NoteAction(double duration, Note *note);

	NoteAction(double duration, Pitch pitch);

	NoteAction(double duration);
};

class Pattern {
	NoteAction *actions;
	int actionLen;
public:
	Pattern(NoteAction *actions, int actionLen);

	void play(int port, Tempo tempo = {});
};

/**
 * A channel stores multiple pattern combinations.
 * Every pattern in the channel should be using the same instrument(port).
 */
class Channel {
public:
	Pattern *patterns;
	int patternLen;
	int port;

	Channel(Pattern *patterns, int patternLen, int port);

	void play(Tempo tempo = {});
};

class MusicPlayer {
public:
	Channel *channels;
	int channelLen;
	Tempo tempo;

	MusicPlayer(Channel *channels, int channelLen, Tempo tempo);
};


#endif //BUZZER_MUSIC_HPP
