#ifndef NYAN_H
#define NYAN_H

#include <stdint.h>

#define NYANCAT_NUM_FRAMES 6

const uint8_t nyancat[NYANCAT_NUM_FRAMES][128*64/8];

uint8_t nyan_draw(uint8_t frame_num);

#endif /* NYAN_H */

