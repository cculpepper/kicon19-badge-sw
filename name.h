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

/**
 * Multiprotocol commands use the following format:
 *
 * offset | description
 * -------+------------
 *      1 | command length (when 1 <= length <= 255) or reset request (when 0)
 *      2 | command type (see cmd_type_t)                      \__ payload
 *  3-255 | actual command data, specific to the command type  /
 *    n+1 | crc (all payload bytes xored together)
 *
 * In order to reset the command buffer to a known state, keep sending 0x00
 * until CMD_RESET_ACK is received.
 */

#ifndef NAME_H
#define NAME_H

#include <stdint.h>

#endif /* COMMANDS_H */
