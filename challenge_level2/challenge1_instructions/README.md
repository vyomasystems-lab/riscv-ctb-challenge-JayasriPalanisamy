## Challenge level 2: Instructions
### Bug:
![C2_c1bug](https://github.com/vyomasystems-lab/riscv-ctb-challenge-JayasriPalanisamy/blob/solution/challenge_level2/challenge1_instructions/C2_c1.png)
* This is AAPG random instruction genration test for a rv32i machine
* The test, on running make, produces 64 bit instructions on the standard output, which causes the error
### Bug fix:
![C2_c1_modify](https://github.com/vyomasystems-lab/riscv-ctb-challenge-JayasriPalanisamy/blob/solution/challenge_level2/challenge1_instructions/C2_c1_fix1.png)
* In the rv32i.yaml file, the configuration rel_rv64m: 10 was changed to rel_rv64m: 0, as this is for a rv32i machine
### On compilation:
![C2_c1_fix](https://github.com/vyomasystems-lab/riscv-ctb-challenge-JayasriPalanisamy/blob/solution/challenge_level2/challenge1_instructions/C2_c1_fix2.png)
