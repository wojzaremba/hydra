hydra
=====
<br/>
ssh hpc.nyu.edu
ssh hydra
qsub -q interactive -I -l nodes=hydra1.es.its.nyu.edu:ppn=1:gpus=1,walltime=4:00:00,mem=10gb

git clone https://login@github.com/wojzaremba/hydra.git

Installation : sh build.sh <br/>

Execution : python convnet.py --data-path=./data/cifar-10-py-colmajor/ --save-path=./checkpoints --test-range=6 --train-range=1-5 --layer-def=./example-layers/layers-80sec.cfg --layer-params=./example-layers/layer-params-80sec.cfg --data-provider=cifar --test-freq=10 --epochs=8

