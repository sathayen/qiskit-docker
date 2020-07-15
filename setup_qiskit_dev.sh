#!/bin/bash

# install terra
git clone https://github.com/Qiskit/qiskit-terra.git
cd qiskit-terra
pip3 install cython
pip3 install -r requirements-dev.txt
pip3 install -e .

cd ..

# install aer
git clone https://github.com/Qiskit/qiskit-aer
pip3 install cmake scikit-build cython
cd qiskit-aer
python ./setup.py bdist_wheel
cd dist
pip3 install qiskit_aer-*.whl

cd ..

# install ignis
git clone https://github.com/Qiskit/qiskit-ignis.git
cd qiskit-ignis
pip3 install -r requirements-dev.txt
pip3 install -e .

cd ..

# install aqua
git clone https://github.com/Qiskit/qiskit-aqua.git
cd qiskit-aqua
pip3 install -r requirements-dev.txt
pip3 install -e .

cd ..

# install ibm q provider
git clone https://github.com/Qiskit/qiskit-ibmq-provider.git
cd qiskit-ibmq-provider
pip3 install -r requirements-dev.txt
pip3 install -e .