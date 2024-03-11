# Get time complexity of decision tree proof
The purpose of this repository is to obtain the time complexity of decision tree. 
Current implementation only allows proving *balanced* decision tree in which each tree level uses the same feature for classification. 
To compare the result with EZKL, we trained balanced decision tree using scikit-learn and compared the result. 

In order to get the time complexity, you first need to generate keys for Circom proof. 
You can do this by running key-gen.sh inside adt/ directory. 
```
bash key-gen.sh
```
After that, run:
```
bash demo.sh
```
to manually generate decision tree with depth 4. 
Finally, run:
```
bash demo.sh
```
to get time spent for generating proof and verifying the decision tree. 
