BLENDER_DIR="/git/datasets/nerf_synthetic/hotdog"
CUDA_VISIBLE_DEVICES="0" python train.py \
   --dataset_name blender \
   --root_dir $BLENDER_DIR \
   --N_importance 64 --img_wh 400 400 --noise_std 0 \
   --num_epochs 16 --batch_size 1024 \
   --optimizer adam --lr 5e-4 \
   --lr_scheduler steplr --decay_step 2 4 8 --decay_gamma 0.5 \
   --exp_name exp  2&>1 |tee Logs/122.txt