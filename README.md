# Pure Data patches

## Various audio and MIDI utilites for Pd environment

### About Pure Data

[Pure Data](http://msp.ucsd.edu) is a visual programming language/environment
for multimedia programming, created as a research into
further development of [MAX/MSP](https://cycling74.com/) concepts.

It became a widely accepted tool for a cross-platform
MIDI and audio programming framework, akin to CSound,
but using a visual "patch" paradigm, and, like its'
commercial brother, MAX/MSP, offers a variety of graphical
"runtime" control elements.

Being a free program, it also has a large [community contributed](https://puredata.info/) extension library, with extensions for OpenGL, video processing,
specialised GUI controls, etc., some of which have become
widely adopted as standard.

It also supports a textual interchange patch format, which
can be used to port patches to MAX/MSP, and vice versa.

With the commerical adoption of MAX/MSP, for example, as
[Max for Live](https://www.ableton.com/en/live/max-for-live/) in
Ableton Live, its' potential has become more than evident.

On top of all this, it is cross-platform (based on Tk framework),
supporting ASIO, portaudio, Jack, ALSA, etc.

### About the patches

My patches are divided into Pure Data patches (under [pd/](./pd/)) and their
interchange format equivalents (under [pat/](./pat)).
Subpatches (more precisely, submodules or abstractions) can be found
in pd/abstractions.

In order to execute patches that use other patches (abstractions),
the Pd environment needs to be told where to find them, otherwise
it expects the submodules to be in the same directory as the
top level patch. The folder hierarchy I employed highlights the
relation between main modules and submodules, which are essentially
"libraries".

Check out the [web page](https://chainjazz.github.io/puredatapatches)
for more info on particular patches.

### Real world application

Although Pure Data is a self sufficient audio/video "runtime", meaning you
create patches and then use them within Pd for creative purposes, you can
also very easily integrate Pd into other environments, due to existence of
"loopback" MIDI ports. My favorite one is "loopMIDI" which is part of
a larger "rtpMIDI" (virtual) driver that implements Apple CoreMIDI RTP on 
Windows OS.

Other uses might include
* porting Pd patches to Max/MSP using minimum effort search and replace text 
editing
* using Pd's built-in networking "classes"
* importing/exporting data in "offline" files
* using additonal extensions
* etc.
