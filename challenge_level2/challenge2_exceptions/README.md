## Challenge level 2: Raise Exceptions
### Task:
* The task is to create a rv32i.yaml
* This config file should help in raising 10 exceptions and should be handled
### Task Solution:
* A rv32i.yaml file is created for the aapg test generation with ecause under exception generation set to arbitrary numbers
* The custom_trap_handler is set to true to log the exceptions generated
![C2_c2_yaml](https://github.com/vyomasystems-lab/riscv-ctb-challenge-JayasriPalanisamy/blob/solution/challenge_level2/challenge2_exceptions/C2_c2.png)
### On compilation:
![C2_c2](https://github.com/vyomasystems-lab/riscv-ctb-challenge-JayasriPalanisamy/blob/solution/challenge_level2/challenge2_exceptions/C2_c2fix.png)
