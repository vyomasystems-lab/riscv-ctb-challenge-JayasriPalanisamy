## Challenge level 2 : Loop
### Bug:
![C2_loop](https://github.com/vyomasystems-lab/riscv-ctb-challenge-JayasriPalanisamy/blob/solution/challenge_level1/challenge2_loop/C1_c2.jpg)
* On running make, spike enters into an infinite loop
* On viewing the code, the loop is not handled properly
* When the loop comes to the end of the test case data, it doen't halt
### Bug fix:
* When the loop comes to the end of test case data, it is redirected to TEST_END
* The incrementer is fixed to point to the right data in next iteration
### On Compilation:
![C2_loop_fix](https://github.com/vyomasystems-lab/riscv-ctb-challenge-JayasriPalanisamy/blob/solution/challenge_level1/challenge2_loop/C1_c2_fix.png)
