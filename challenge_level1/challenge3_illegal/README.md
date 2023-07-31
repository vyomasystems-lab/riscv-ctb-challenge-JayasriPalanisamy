## Challenge level 1 : illegal
### Bug:
![C1_illegal_bug](https://github.com/vyomasystems-lab/riscv-ctb-challenge-JayasriPalanisamy/blob/solution/challenge_level1/challenge3_illegal/C1_c3.png)
* This interrupt handling bug
* It is not handled well, the return address and the address to jump on interrupt(mtvec) are not specified correctly
* The mtvec CSR should be saved during the interrupt and restored after interrupt
* As this not done, spike enters into infinite loop as mtvec is not restored even for ecall in TEST_END
## Bug fix:
* The mtvec is handled properly
* It is initialised to the interrupt and its original value is stored in a temp register
* During interrupt, the return address is made to point to TEST_END
* After interrupt, mtvec is restored to its original value
* This can be alternatively handled through a stack also
## On Compilation:
![C1_illegal_fix](https://github.com/vyomasystems-lab/riscv-ctb-challenge-JayasriPalanisamy/blob/solution/challenge_level1/challenge3_illegal/C1_c3_fix.png)
