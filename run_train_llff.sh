python train.py \
   --dataset_name llff \
   --root_dir  /localhome/local-vili/git/datasets/nerf_llff_data/fern \
   --N_importance 64 --img_wh 504 378 \
   --num_epochs 30 --batch_size 1024 \
   --optimizer adam --lr 5e-4 \
   --lr_scheduler steplr --decay_step 10 20 --decay_gamma 0.5 \
   --exp_name exp