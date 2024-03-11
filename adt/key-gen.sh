snarkjs powersoftau new bn128 15 pot15_0000.ptau -v
snarkjs powersoftau contribute pot15_0000.ptau pot15_0001.ptau --name="First contribution" -v <<EOF
asdf
EOF

snarkjs powersoftau prepare phase2 pot15_0001.ptau pot15_final.ptau -v
snarkjs groth16 setup AuthenticatedDT.r1cs pot15_final.ptau proof0.key
snarkjs zkey contribute proof0.key proof01.key --name="your name" -v <<EOF
asdf
EOF
snarkjs zkey export verificationkey proof01.key verification_key.json
