/*
 * Copyright (c) 2019 Maciej Suminski <orson@orson.net.pl>
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

#include "name.h"
#include "namePixels.h"

#include "apps_list.h"
#include "buttons.h"
#include "udi_cdc.h"
#include "lcd.h"

#include <stddef.h>
#include <string.h>

void app_name_func(void)
{
                                               
    while(SSD1306_isBusy());                                                       
    SSD1306_clearBufferFull();
    for(int i = 0; i<(numPixels); i++)
    {
	    SSD1306_setPixel(namePixels[i][1], namePixels[i][0], 1);
    }
    SSD1306_drawBufferDMA();       

    while(btn_state() != BUT_LEFT);
}
