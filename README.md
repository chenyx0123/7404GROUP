We use cifar-10 dataset, and SimCLR pre-text model (Resnet18)

**!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!**

**!!!!!!!!!Need GPU!!!!!!!!**

**!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!**

----

**create conda env**

`conda env create -f requirements.yaml`

`conda activate dqq`

**load pre trained contrastive model (SimCLR)**

`python simclr.py --config_env configs/env.yml --config_exp configs/pretext/simclr_cifar10.yml`

**NNM Training**

`python scan.py --gpus 0 --config_env configs/env.yml --config_exp configs/scan/scan_cifar10.yml`
    
Parameters are set in configs/scan/scan_cifar10.yml 

**Evaluation Figure**

`python eval.py --config_exp configs/scan/scan_cifar10.yml --visualize_prototypes --model  ./results/cifar-10/scan/model.pth.tar`

Result topk stored on cifar-10-{timestamp}
