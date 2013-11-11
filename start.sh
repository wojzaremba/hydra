export  PYTHONPATH=$PYTHONPATH:./local/lib
export PATH=.local/bin:$PATH

module load python/2.7.5
module load atlas/3.10.1

python convnet.py --data-path=./data/cifar-10-py-colmajor/ --save-path=./checkpoints --test-range=6 --train-range=1-5 --layer-def=./example-layers/layers-80sec.cfg --layer-params=./example-layers/layer-params-80sec.cfg --data-provider=cifar --test-freq=10 --epochs=8
