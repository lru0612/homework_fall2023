# for seed in $(seq 1 5); do
# python cs285/scripts/run_hw2.py --env_name InvertedPendulum-v4 -n 100 \
# --exp_name pendulum_default_s$seed \
# -rtg --use_baseline -na \
# --batch_size 5000 \
# --seed $seed
# done
python cs285/scripts/run_hw2.py --env_name InvertedPendulum-v4 -n 100 \
--discount 0.99 \
--gae_lambda 0.98 \
-lr 0.01 \
-rtg --use_baseline -na \
--batch_size 5000 \
--seed 1 \
--exp_name pendulum_lda0.98_gama0.99_lr0.01_bt5000
python cs285/scripts/run_hw2.py --env_name InvertedPendulum-v4 -n 100 \
--discount 0.99 \
--gae_lambda 0.98 \
-lr 0.02 \
-rtg --use_baseline -na \
--batch_size 5000 \
--seed 1 \
--exp_name pendulum_lda0.98_gama0.99_lr0.02_bt5000