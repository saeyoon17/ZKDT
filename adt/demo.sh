# #!/bin/bash
tput setaf 2;echo "Generating a decision tree of depth 10"
sleep 1
python generate_dt.py
tput setaf 2;echo "Generating random input"
sleep 1
tput setaf 2;echo "Compiling circuit"
circom AuthenticatedDT.circom --r1cs --wasm --sym --c
tput setaf 2;echo "Reading DT, input and generating commitment to DT"
sleep 1
node adt.js
tput setaf 2;echo "Computing witness"
sleep 1
cd AuthenticatedDT_js
node generate_witness.js AuthenticatedDT.wasm input.json witness.wtns
tput setaf 2;echo "Done!"
