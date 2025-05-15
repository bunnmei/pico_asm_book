
.thumb_func は、ARMアセンブリにおいて 「この関数はThumbモードで呼び出されるべき関数である」
.thumb_func をつけると、リンカが関数アドレスの LSB（bit0）を 1 にするように処理します。


#　ニーモニック

[ARM Cortex-m0+](https://developer.arm.com/documentation/dui0662/b/The-Cortex-M0--Instruction-Set/Instruction-set-summary?lang=en)

### BL(Branch with Link)
関数の呼び出し

### MOV
MOVはフラグが変化されない
MOVSはフラグが変化する0フラグやNの負の値など📌 どっちを使うべき？
条件分岐（BEQ, BMI など）に続けて使いたい場合 → MOVS

単に値を移動したいだけでフラグを汚したくない場合 → MOV

