python simclr.py \
    --config_env configs/env.yml \
    --config_exp configs/pretext/simclr_cifar10.yml



python scan.py \
    --gpus 0 \
    --config_env configs/env.yml \
    --config_exp configs/scan/scan_cifar10.yml 
    

python eval.py \
    --config_exp configs/scan/scan_cifar10.yml \
    --visualize_prototypes \
    --model  ./results/cifar-10/scan/model.pth.tar
