.segment "CODE"
.proc _start
    sei         ; 割り込み禁止
    cld
    ldx #$40
    stx $4017   ; APUフレームカウンタ
    ldx #$FF
    txs         ; スタック初期化
    inx
    stx $2000   ; PPU制御レジスタ
    stx $2001   ; PPUマスク
    stx $4010   ; DMC制御
    jsr _main   ; Cのmainへジャンプ
    jmp *
.endproc
