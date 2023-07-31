# RISCV-DV

Test generation using riscv-dv
```
run --target rv32i --test riscv_arithmetic_basic_test --testlist testlist.yaml --simulator pyflow
```

Coverage related information is obtained in the below link:
https://github.com/chipsalliance/riscv-dv/tree/master/pygen/pygen_src

# Challenge
The challenge is to fix the tool problem in generating coverage and make rv32i ISA coverage 100%
# Solution
* The run command was executed for each and every test in testlist.yaml
* The tests took too long to execute when no_of_sub_program was set
* Despite handling them, they take too long to run
* The coverage percentage is 26.54%
* Changes were made in the riscv-dv tool in files like run.py, riscv_asm_program_gen.py,riscv_cov_instr.py
