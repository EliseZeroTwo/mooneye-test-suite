; Copyright (C) 2014-2022 Joonas Javanainen <joonas.javanainen@gmail.com>
;
; Permission is hereby granted, free of charge, to any person obtaining a copy
; of this software and associated documentation files (the "Software"), to deal
; in the Software without restriction, including without limitation the rights
; to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
; copies of the Software, and to permit persons to whom the Software is
; furnished to do so, subject to the following conditions:
;
; The above copyright notice and this permission notice shall be included in
; all copies or substantial portions of the Software.
;
; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
; IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
; FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
; AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
; LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
; OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
; SOFTWARE.

; Tests banking behaviour of a MBC5 cart with a 512 kbit ROM

; See gb-ctr for details: https://github.com/Gekkio/gb-ctr

; Results have been verified using a flash cartridge with a genuine MBC5 chip
; and support for configuring ROM/RAM sizes.

.define CART_ROM_BANKS 4

.include "harness/mbc5_rom.s"

.bank 0 slot 0
.section "expected banks" FREE

expected_banks:
; $4000-$7FFF area
.dw   0   1   2   3   0   1   2   3   0   1   2   3   0   1   2   3
.dw   0   1   2   3   0   1   2   3   0   1   2   3   0   1   2   3
.dw   0   1   2   3   0   1   2   3   0   1   2   3   0   1   2   3
.dw   0   1   2   3   0   1   2   3   0   1   2   3   0   1   2   3
.dw   0   1   2   3   0   1   2   3   0   1   2   3   0   1   2   3
.dw   0   1   2   3   0   1   2   3   0   1   2   3   0   1   2   3
.dw   0   1   2   3   0   1   2   3   0   1   2   3   0   1   2   3
.dw   0   1   2   3   0   1   2   3   0   1   2   3   0   1   2   3
.dw   0   1   2   3   0   1   2   3   0   1   2   3   0   1   2   3
.dw   0   1   2   3   0   1   2   3   0   1   2   3   0   1   2   3
.dw   0   1   2   3   0   1   2   3   0   1   2   3   0   1   2   3
.dw   0   1   2   3   0   1   2   3   0   1   2   3   0   1   2   3
.dw   0   1   2   3   0   1   2   3   0   1   2   3   0   1   2   3
.dw   0   1   2   3   0   1   2   3   0   1   2   3   0   1   2   3
.dw   0   1   2   3   0   1   2   3   0   1   2   3   0   1   2   3
.dw   0   1   2   3   0   1   2   3   0   1   2   3   0   1   2   3
.dw   0   1   2   3   0   1   2   3   0   1   2   3   0   1   2   3
.dw   0   1   2   3   0   1   2   3   0   1   2   3   0   1   2   3
.dw   0   1   2   3   0   1   2   3   0   1   2   3   0   1   2   3
.dw   0   1   2   3   0   1   2   3   0   1   2   3   0   1   2   3
.dw   0   1   2   3   0   1   2   3   0   1   2   3   0   1   2   3
.dw   0   1   2   3   0   1   2   3   0   1   2   3   0   1   2   3
.dw   0   1   2   3   0   1   2   3   0   1   2   3   0   1   2   3
.dw   0   1   2   3   0   1   2   3   0   1   2   3   0   1   2   3
.dw   0   1   2   3   0   1   2   3   0   1   2   3   0   1   2   3
.dw   0   1   2   3   0   1   2   3   0   1   2   3   0   1   2   3
.dw   0   1   2   3   0   1   2   3   0   1   2   3   0   1   2   3
.dw   0   1   2   3   0   1   2   3   0   1   2   3   0   1   2   3
.dw   0   1   2   3   0   1   2   3   0   1   2   3   0   1   2   3
.dw   0   1   2   3   0   1   2   3   0   1   2   3   0   1   2   3
.dw   0   1   2   3   0   1   2   3   0   1   2   3   0   1   2   3
.dw   0   1   2   3   0   1   2   3   0   1   2   3   0   1   2   3

.ends
