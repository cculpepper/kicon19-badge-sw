/*
 * Copyright (c) 2019 Katarzyna Stachyra <kas.stachyra@gmail.com>
 *
 * This source code is free software; you can redistribute it
 * and/or modify it in source code form under the terms of the GNU
 * General Public License as published by the Free Software
 * Foundation; either version 2 of the License, or (at your option)
 * any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA.
 */

#ifndef SSD1306_COMMANDS_H_
#define SSD1306_COMMANDS_H_

#define SSD1306_SETLOWCOLUMN		0x00
#define SSD1306_SETHIGHCOLUMN		0x10
#define SSD1306_MEMORYMODE			0x20
#define SSD1306_COLUMNADDR			0x21
#define SSD1306_PAGEADDR			0x22
#define SSD1306_SETSTARTLINE		0x40
#define SSD1306_DEFAULT_ADDRESS		0x78
#define SSD1306_SETCONTRAST			0x81
#define SSD1306_CHARGEPUMP			0x8D
#define SSD1306_SEGREMAP			0xA0
#define SSD1306_DISPLAYALLON_RESUME	0xA4
#define SSD1306_DISPLAYALLON		0xA5
#define SSD1306_NORMALDISPLAY		0xA6
#define SSD1306_INVERTDISPLAY		0xA7
#define SSD1306_SETMULTIPLEX		0xA8
#define SSD1306_DISPLAYOFF			0xAE
#define SSD1306_DISPLAYON			0xAF
#define SSD1306_SETPAGE				0xB0
#define SSD1306_COMSCANINC			0xC0
#define SSD1306_COMSCANDEC			0xC8
#define SSD1306_SETDISPLAYOFFSET	0xD3
#define SSD1306_SETDISPLAYCLOCKDIV	0xD5
#define SSD1306_SETPRECHARGE		0xD9
#define SSD1306_SETCOMPINS			0xDA
#define SSD1306_SETVCOMDETECT		0xDB

#define SSD1306_SWITCHCAPVCC		0x02
#define SSD1306_NOP					0xE3

//addressing modes:
#define SSD1306_HORIZONTAL			0x00
#define SSD1306_VERTICAL			0x01
#define SSD1306_PAGE				0x02

#define SSD1306_PAGESTART			0xB0

#endif /* SSD1306_COMMANDS_H_ */
