#!/bin/bash

git clone https://github.com/Qiskit/qiskit-terra.git
cd qiskit-terra
sed 's/${QISKIT_VERSION}/0.6.1/g' setup.py.in > setup.py 
pip3 install -e .
#commit_id_terra=`git rev-parse --short HEAD`
cd ..
git clone https://github.com/Qiskit/aqua.git    
git clone https://github.com/Qiskit/aqua-chemistry.git
git clone https://github.com/Qiskit/qiskit-tutorial.git
git clone https://github.com/Qiskit/aqua-tutorials.git

for d in "aqua" "aqua-chemistry"
do
cd $d
pip3 install -e .
#commit_id_$d=`git rev-parse --short HEAD`
cd ..
done

