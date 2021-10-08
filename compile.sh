g++ speck32_hw.cpp
./a.out > test.smt2
stp test.smt2 --output-CNF --exit-after-CNF
cryptominisat4 --maxsol 10000000 --verb 0 output_0.cnf > output.txt
grep -o SATISFIABLE output.txt |wc -l
