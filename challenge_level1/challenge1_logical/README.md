## Challenge level 1: Logical
### Bug:
![C1_logical bug](https://github.com/vyomasystems-lab/riscv-ctb-challenge-JayasriPalanisamy/blob/d80d64e529f6b4d051d0a5a37040ebe777e7073a/challenge_level1/challenge1_logical/C1_c1.png?raw=true)
* The bug has arisen because of illegal instructions
* The register z4 is not a part of general-purpose registers and control and status registers
* addi is an immediate instruction taking in 3 operands and takes in immediate value as its third operand
### Bug Fix:
* In add instruction, z4 is replaced by 's4'
* In addi instruction, s0 is replaced by immediate value '0'
### On Compilation:
![C1_logical_fix](https://github.com/vyomasystems-lab/riscv-ctb-challenge-JayasriPalanisamy/blob/solution/challenge_level1/challenge1_logical/C1_c1_fix.jpg)
