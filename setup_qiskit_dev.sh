#!/bin/bash

git clone https://github.com/Qiskit/qiskit-terra.git
cd qiskit-terra
sed 's/${QISKIT_VERSION}/0.5.8/g' setup.py.in > setup.py 
pip3 install -e .
cd ..
git clone https://github.com/Qiskit/aqua.git    
git clone https://github.com/Qiskit/aqua-chemistry.git
git clone https://github.com/Qiskit/qiskit-tutorial.git
git clone https://github.com/Qiskit/aqua-tutorials.git

for d in "aqua" "aqua-chemistry"
do
cd $d
pip3 install -e .
cd ..
done

