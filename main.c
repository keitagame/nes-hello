#include <nes.h>
#include <string.h>

void main(void) {
    // 画面をクリア
    ppu_off();
    vram_adr(NAMETABLE_A);

    // "HELLO WORLD" を表示
    vram_put('H');
    vram_put('E');
    vram_put('L');
    vram_put('L');
    vram_put('O');
    vram_put(' ');
    vram_put('W');
    vram_put('O');
    vram_put('R');
    vram_put('L');
    vram_put('D');

    ppu_on_all();

    // 無限ループ
    while (1) {
    }
}
