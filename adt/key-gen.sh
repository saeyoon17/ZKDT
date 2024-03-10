snarkjs powersoftau new bn128 14 pot14_0000.ptau -v
snarkjs powersoftau contribute pot14_0000.ptau pot14_0001.ptau --name="First contribution" -v <<EOF
asdf
EOF

snarkjs powersoftau prepare phase2 pot14_0001.ptau pot14_final.ptau -v
snarkjs groth16 setup AuthenticatedDT.r1cs pot14_final.ptau proof0.key
snarkjs zkey contribute proof0.key proof01.key --name="your name" -v <<EOF
asdf
EOF
snarkjs zkey export verificationkey proof01.key verification_key.json