from subprocess import check_output
import time 

st = time.time()
a = check_output(
    [
        f"snarkjs groth16 prove proof01.key ./AuthenticatedDT_js/witness.wtns proof0.json public0.json"
    ],
    shell=True,
)
print(time.time() - st)
st = time.time()
a = check_output(
    [
        f"snarkjs groth16 verify verification_key.json public0.json proof0.json"
    ],
    shell=True,
)
print(time.time() - st)