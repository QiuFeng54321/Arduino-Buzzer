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

#include "Music.hpp"

#ifndef USE_ARDUINO

#include "BuzzerLocalAdaptor.hpp"

#endif
//#define USE_VOLUME2
//
//#include <Volume2/src/volume2.h>
//#include <Volume2/src/volume2.cpp>
//Volume volume;

Tempo::Tempo(double tempo) : tempo(tempo) {}

long Tempo::getLen(double relativeDuration) {
//	return 60 / tempo * 1000 * relativeDuration;
	return relativeDuration;
}

long Tempo::getLen(double tempo, double relativeDuration) {
	return Tempo{tempo}.getLen(relativeDuration);
}

void Note::play(int port, double dur, Tempo tempo) {
#ifndef USE_ARDUINO
	std::cout << "Pin " << port << " play: " << pitchMap[static_cast<const int>(pitch)] << " for " << dur << "ms"
			  << std::endl;
#else
	Serial.print("Pin");
	Serial.print(port);
	Serial.print(":");
	Serial.println(dur);
#endif
#ifdef USE_VOLUME2
	volume.tone((unsigned int)pitch, TRIANGLE_HIGH, 100);
	volume.delay(tempo.getLen(dur));
	volume.noTone();
#else
	tone(port, (unsigned int) pitch);
	delay(tempo.getLen(dur));
	noTone(port);
#endif
}

Note::Note(Pitch pitch) : pitch(pitch) {}

Pattern::Pattern(NoteAction *actions, int actionLen) : actions(actions),
													   actionLen(actionLen) {}

void Pattern::play(int port, Tempo tempo) {
	for (int i = 0; i < actionLen; ++i) {
		NoteAction noteAction = actions[i];
		if (not noteAction.isEmpty) {
			noteAction.note->play(port, noteAction.duration, tempo);
		} else {
#ifndef USE_ARDUINO
			std::cout << "Silence for " << tempo.getLen(noteAction.duration) << "ms" << std::endl;
#endif
			delay(tempo.getLen(noteAction.duration));
		}
	}
}

NoteAction::NoteAction(double duration, Note *note) : duration(duration), note(note) {
	if (note == nullptr) isEmpty = true;
}

NoteAction::NoteAction(double duration, Pitch pitch) : duration(duration), note(new Note{pitch}) {

}

NoteAction::NoteAction(double duration) : duration(duration), note(nullptr), isEmpty(true) {}

Channel::Channel(Pattern *patterns, int patternLen, int port) : patterns(patterns), patternLen(patternLen), port(port) {

}

void Channel::play(Tempo tempo) {
	for (int i = 0; i < patternLen; i++) {
		patterns[i].play(port, tempo);
	}
}

MusicPlayer::MusicPlayer(Channel *channels, int channelLen, Tempo tempo) : channels(channels), channelLen(channelLen),
																		   tempo(tempo) {}
