max v2;
#N vpatcher 31 50 1236 754;
#P newex 289 426 50 10 dac~;
#P newex 156 270 50 10 *~;
#N vpatcher 700 108 1234 517;
#P inlet 90 106 20;
#P inlet 147 106 20;
#P inlet 198 106 20;
#P inlet 251 106 20;
#P inlet 311 106 20;
#P inlet 371 105 20;
#P newex 259 186 100 10 del \$3;
#P comment 90 84 50 10 trig;
#P comment 146 84 50 10 atten;
#P comment 245 83 50 10 attack;
#P comment 308 82 50 10 decay;
#P comment 195 85 50 10 sust;
#P comment 364 83 50 10 release;
#P newex 164 261 150 10 pack 0 \$3;
#P newex 260 273 150 10 pack 0 \$4;
#P newex 90 128 100 10 sel 0;
#P message 90 151 50 10 stop;
#P newex 335 302 150 10 pack 0 \$5;
#P comment 4 -1 700 10 REM parameter reference numbers are arbitral
\, and have nothing to do with inlets;
#P newex 260 212 100 10 * 0.01;
#P newex 260 234 100 10 * \$1;
#P newex 311 334 50 10 line~;
#P outlet 310 358 20 1;
#P comment 433 23 150 10 created by Rastko;
#P comment 3 29 1300 10 TODO currently \, atten inlet has no effect
\, because the trigger inlet resets it \, because the sel object uses
bang only with left outlet;
#P connect 24 0 9 0;
#P connect 23 0 11 0;
#P connect 23 0 4 1;
#P connect 22 0 5 0;
#P connect 21 0 11 1;
#P connect 21 0 18 1;
#P connect 20 0 10 1;
#P connect 19 0 7 1;
#P connect 18 0 5 0;
#P connect 11 0 3 0;
#P connect 10 0 3 0;
#P connect 9 0 8 0;
#P connect 9 0 7 0;
#P connect 9 1 11 0;
#P connect 9 1 18 0;
#P connect 8 0 18 0;
#P connect 7 0 3 0;
#P connect 5 0 4 0;
#P connect 4 0 10 0;
#P connect 3 0 2 0;
#P pop;
#P newobj 61 191 50 10 p contour;
#P message 110 129 50 10 0;
#P newex 110 103 100 10 del 200;
#P button 97 79 15 0;
#P slider 108 158 15 24 0.0217391 1;
#P slider 145 161 15 24 4.34783 1;
#P user hslider 214 165 15 24 2503 1 0 0;
#P user hslider 250 165 15 24 2503 1 0 0;
#P user hslider 180 165 15 24 2503 1 0 0;
#P flonum 156 79 150;
#N vpatcher 694 390 1144 690;
#P newex 120 73 100 10 -~ 0.5;
#P newex 120 115 50 10 abs~;
#P newex 120 162 100 10 *~ 4;
#P newex 120 204 100 10 -~ 1;
#P outlet 120 242 20 1;
#P newex 122 36 100 10 phasor~ 440;
#P connect 5 0 4 0;
#P connect 4 0 3 0;
#P connect 3 0 2 0;
#P connect 2 0 1 0;
#P connect 0 0 5 0;
#P pop;
#P newobj 243 219 50 10 p triwav;
#P newex 227 271 50 10 *~;
#P newex 288 394 50 10 +~;
#P comment 508 95 150 10 created by Rastko;
#P comment 508 19 400 10 Snare synthesizing algorithm by Sound On Sound
magazine;
#P newex 326 218 100 10 cycle~ 330;
#P newex 174 219 100 10 cycle~ 180;
#P newex 398 218 50 10 noise~;
#P newex 381 278 50 10 *~;
#P newex 408 313 50 10 *~;
#P newex 390 334 50 10 +~;
#P newex 390 356 50 10 *~;
#P slider 450 318 15 24 0.0434783 1;
#P newex 187 302 50 10 +~;
#P comment 178 145 50 10 A;
#P comment 216 146 50 10 D;
#P comment 251 144 50 10 R;
#P comment 146 144 50 10 S;
#P newex 97 0 50 10 notein;
#P comment 474 312 50 10 <Mr.Snappy;
#P newex 448 60 100 10 / 127;
#P newex 97 25 50 10 stripnote;
#P slider 480 216 15 24 869.13 10;
#P slider 458 216 15 24 869.13 10;
#P comment 142 0 350 10 - please use MIDI controller to trigger;
#P newex 511 248 50 10 *;
#P message 62 129 50 10 1;
#P flonum 51 330 150;
#P flonum 181 109 150;
#P newex 398 250 150 10 lores~ 1000 0.5;
#P newex 460 290 50 10 -~;
#P connect 41 0 17 0;
#P connect 40 0 41 0;
#P connect 40 0 29 0;
#P connect 40 0 22 0;
#P connect 40 0 21 0;
#P connect 39 0 40 0;
#P connect 38 0 39 0;
#P connect 37 0 38 0;
#P connect 37 0 4 0;
#P connect 36 0 40 1;
#P connect 36 0 40 0;
#P connect 36 0 3 0;
#P connect 35 0 40 2;
#P connect 34 0 40 4;
#P connect 33 0 40 5;
#P connect 32 0 40 3;
#P connect 31 0 38 1;
#P connect 29 0 17 1;
#P connect 28 0 42 0;
#P connect 28 0 42 1;
#P connect 25 0 29 1;
#P connect 24 0 41 1;
#P connect 23 0 1 0;
#P connect 23 0 0 0;
#P connect 22 0 20 0;
#P connect 21 0 20 1;
#P connect 20 0 19 0;
#P connect 19 0 28 1;
#P connect 18 0 19 1;
#P connect 17 0 28 0;
#P connect 12 0 9 0;
#P connect 12 1 9 1;
#P connect 10 0 36 0;
#P connect 10 0 5 1;
#P connect 9 0 37 0;
#P connect 9 1 10 0;
#P connect 7 0 5 0;
#P connect 5 0 1 1;
#P connect 4 0 36 0;
#P connect 2 0 32 0;
#P connect 2 0 34 0;
#P connect 2 0 33 0;
#P connect 1 0 22 1;
#P connect 1 0 0 1;
#P connect 0 0 21 1;
#P pop;
