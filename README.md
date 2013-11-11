hydra
=====
<br/>

Login to hydra and start an interactive session.
```
ssh hpc.nyu.edu <br/>
ssh hydra <br/>
qsub -q interactive -I -l nodes=hydra1.es.its.nyu.edu:ppn=1:gpus=1,walltime=4:00:00,mem=10gb <br/>
```

Clone repository (if you have not done so already). Make sure to replace login with your own git login.
```
git clone https://login@github.com/wojzaremba/hydra.git
```

Rename old ~/.local directory and add symboic link to repository_loc/.local:<br/>
```
cd ~/ 
ln -s repository_loc/.local
```

Add the following to your ~/.bash_profile<br/>
```
export  PYTHONPATH=$PYTHONPATH:repository_loc/local/lib
export PATH=repository_loc/local/bin:$PATH

module load python/2.7.5 <br/>
module load atlas/3.10.1 <br/>
```
<br/>
Installation : ```sh build.sh``` <br/>

Execution : 
```
python convnet.py --data-path=./data/cifar-10-py-colmajor/ --save-path=./checkpoints --test-range=6 --train-range=1-5 --layer-def=./example-layers/layers-80sec.cfg --layer-params=./example-layers/layer-params-80sec.cfg --data-provider=cifar --test-freq=10 --epochs=8
```
