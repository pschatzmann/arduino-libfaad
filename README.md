# Freeware Advanced Audio (AAC) Decoder including SBR decoding

FAAD2 is a HE, LC, MAIN and LTP profile, MPEG2 and MPEG-4 AAC decoder.
FAAD2 includes code for SBR (HE AAC) decoding.
FAAD2 is licensed under the GPL.


## COPYRIGHTS

For FAAD2 the following license applies:

```
******************************************************************************
** FAAD2 - Freeware Advanced Audio (AAC) Decoder including SBR decoding
** Copyright (C) 2003-2005 M. Bakker, Nero AG, http://www.nero.com
**
** This program is free software; you can redistribute it and/or modify
** it under the terms of the GNU General Public License as published by
** the Free Software Foundation; either version 2 of the License, or
** (at your option) any later version.
**
** This program is distributed in the hope that it will be useful,
** but WITHOUT ANY WARRANTY; without even the implied warranty of
** MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
** GNU General Public License for more details.
**
** You should have received a copy of the GNU General Public License
** along with this program; if not, write to the Free Software
** Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.
**
** Any non-GPL usage of this software or parts of this software is strictly
** forbidden.
**
** The "appropriate copyright message" mentioned in section 2c of the GPLv2
** must read: "Code from FAAD2 is copyright (c) Nero AG, www.nero.com"
**
** Commercial non-GPL licensing of this software is possible.
** For more info contact Nero AG through Mpeg4AAClicense@nero.com.
******************************************************************************
```

Please note that the use of this software may require the payment of
patent royalties. You need to consider this issue before you start
building derivative works. We are not warranting or indemnifying you in
any way for patent royalities! YOU ARE SOLELY RESPONSIBLE FOR YOUR OWN
ACTIONS!


## Arduino

This project is part of my [Arduino Audio Tools](https://github.com/pschatzmann/arduino-audio-tools). Please read the corresponding [Wiki](https://github.com/pschatzmann/arduino-audio-tools/wiki/Encoding-and-Decoding-of-Audio) how to use it.

### Memory Requirements

I was struggling quite a bit with the memory requirements and I could only make it work on an ESP32 with a __stack of 60k__ and by using PSRAM. So to fulfill the stack requirement we need to run the decoder in a separate freertos task.

Further details can be found in my [related blog](https://www.pschatzmann.ch/home/2023/09/12/arduino-audio-tools-faat-aac-decoder/).



### Installation

You can download the library as zip and call include Library -> zip library. Or you can git clone this project into the Arduino libraries folder e.g. with

```
cd  ~/Documents/Arduino/libraries
git clone https://github.com/pschatzmann/arduino-libfaad.git
```

I recommend to use git because you can easily update to the latest version just by executing the ```git pull``` command in the project folder.



