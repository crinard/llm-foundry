#!/bin/bash

PROJECT="interntorch2"
GIT_COMMIT="v0.0.4"
IMAGE="mosaicml/pytorch:2.0.1_cu118-python3.10-ubuntu20.04"
CLUSTER_80GB=r1z1
CLUSTER_40GB=r8z3

# A100 80GB

# seqlen 2048
# python submit_benchmarks.py --project $PROJECT -m 1b.yaml -g 8 --microbatch_size  14 --accum  4 --image $IMAGE --git_commit $GIT_COMMIT --gpu_type a100_80gb --cluster $CLUSTER_80GB -s 11 11 --RUN
# # python submit_benchmarks.py --project $PROJECT -m   3b.yaml -g 8 --microbatch_size  10 --accum  6 --image $IMAGE --git_commit $GIT_COMMIT --gpu_type a100_80gb --cluster $CLUSTER_80GB -s 11 11 --RUN --fsdp_config_activation_checkpointing false
# python submit_benchmarks.py --project $PROJECT -m   7b.yaml -g 8 --microbatch_size  32 --accum  2 --image $IMAGE --git_commit $GIT_COMMIT --gpu_type a100_80gb --cluster $CLUSTER_80GB -s 11 11 --RUN --fsdp_config_activation_checkpointing true
# python submit_benchmarks.py --project $PROJECT -m  13b.yaml -g 8 --microbatch_size  20 --accum  3 --image $IMAGE --git_commit $GIT_COMMIT --gpu_type a100_80gb --cluster $CLUSTER_80GB -s 11 11 --RUN  --fsdp_config_activation_checkpointing true
# # python submit_benchmarks.py --project $PROJECT -m  30b.yaml -g 8 --microbatch_size   3 --accum 21 --image $IMAGE --git_commit $GIT_COMMIT --gpu_type a100_80gb --cluster $CLUSTER_80GB -s 11 11 --RUN --fsdp_config_activation_checkpointing true

# python submit_benchmarks.py --project $PROJECT -m   3b.yaml -g 8 --microbatch_size   5 --accum  8 --image $IMAGE --git_commit $GIT_COMMIT --gpu_type a100_80gb --cluster $CLUSTER_80GB -s 11 11 --RUN --fsdp_config_activation_checkpointing false
# python submit_benchmarks.py --project $PROJECT -m   3b.yaml -g 8 --microbatch_size   8 --accum  8 --image $IMAGE --git_commit $GIT_COMMIT --gpu_type a100_80gb --cluster $CLUSTER_80GB -s 11 11 --RUN --fsdp_config_activation_checkpointing false
# python submit_benchmarks.py --project $PROJECT -m   3b.yaml -g 8 --microbatch_size   12 --accum  8 --image $IMAGE --git_commit $GIT_COMMIT --gpu_type a100_80gb --cluster $CLUSTER_80GB -s 11 11 --RUN --fsdp_config_activation_checkpointing false
# python submit_benchmarks.py --project $PROJECT -m   3b.yaml -g 8 --microbatch_size   16 --accum  8 --image $IMAGE --git_commit $GIT_COMMIT --gpu_type a100_80gb --cluster $CLUSTER_80GB -s 11 11 --RUN --fsdp_config_activation_checkpointing false

python submit_benchmarks.py --project $PROJECT -m   3b.yaml -g 8 --microbatch_size   5 --accum  8 --image $IMAGE --git_commit $GIT_COMMIT --gpu_type a100_80gb --cluster $CLUSTER_80GB -s 11 11 --RUN --fsdp_config_activation_checkpointing true
python submit_benchmarks.py --project $PROJECT -m   3b.yaml -g 8 --microbatch_size   8 --accum  8 --image $IMAGE --git_commit $GIT_COMMIT --gpu_type a100_80gb --cluster $CLUSTER_80GB -s 11 11 --RUN --fsdp_config_activation_checkpointing true
python submit_benchmarks.py --project $PROJECT -m   3b.yaml -g 8 --microbatch_size   12 --accum  8 --image $IMAGE --git_commit $GIT_COMMIT --gpu_type a100_80gb --cluster $CLUSTER_80GB -s 11 11 --RUN --fsdp_config_activation_checkpointing true
python submit_benchmarks.py --project $PROJECT -m   3b.yaml -g 8 --microbatch_size   16 --accum  8 --image $IMAGE --git_commit $GIT_COMMIT --gpu_type a100_80gb --cluster $CLUSTER_80GB -s 11 11 --RUN --fsdp_config_activation_checkpointing true

python submit_benchmarks.py --project $PROJECT -m   7b.yaml -g 8 --microbatch_size  16 --accum  4 --image $IMAGE --git_commit $GIT_COMMIT --gpu_type a100_80gb --cluster $CLUSTER_80GB -s 11 11 --RUN --fsdp_config_activation_checkpointing false
python submit_benchmarks.py --project $PROJECT -m   7b.yaml -g 8 --microbatch_size  12 --accum  4 --image $IMAGE --git_commit $GIT_COMMIT --gpu_type a100_80gb --cluster $CLUSTER_80GB -s 11 11 --RUN

# Replicate/understand any diffs using streaming data loader
python submit_benchmarks.py --project $PROJECT -m  13b.yaml -g 8 --microbatch_size 1 --accum 16 --image $IMAGE --git_commit $GIT_COMMIT --gpu_type a100_80gb --cluster $CLUSTER_80GB -s 13 13 --RUN --fsdp_config_activation_checkpointing true
python submit_benchmarks.py --project $PROJECT -m  13b.yaml -g 8 --microbatch_size 2 --accum 16 --image $IMAGE --git_commit $GIT_COMMIT --gpu_type a100_80gb --cluster $CLUSTER_80GB -s 12 12 --RUN --fsdp_config_activation_checkpointing true

# 80GB Test microbatch size w/ no act_ckpt
python submit_benchmarks.py --project $PROJECT -m  7b.yaml -g 8 --microbatch_size 1 --accum 16 --image $IMAGE --git_commit $GIT_COMMIT --gpu_type a100_80gb --cluster $CLUSTER_80GB -s 11 11 --RUN --fsdp_config_activation_checkpointing false
python submit_benchmarks.py --project $PROJECT -m  7b.yaml -g 8 --microbatch_size 2 --accum 16 --image $IMAGE --git_commit $GIT_COMMIT --gpu_type a100_80gb --cluster $CLUSTER_80GB -s 11 11 --RUN --fsdp_config_activation_checkpointing false
python submit_benchmarks.py --project $PROJECT -m  7b.yaml -g 8 --microbatch_size 4 --accum 16 --image $IMAGE --git_commit $GIT_COMMIT --gpu_type a100_80gb --cluster $CLUSTER_80GB -s 11 11 --RUN --fsdp_config_activation_checkpointing false
python submit_benchmarks.py --project $PROJECT -m  3b.yaml -g 8 --microbatch_size 3 --accum 16 --image $IMAGE --git_commit $GIT_COMMIT --gpu_type a100_80gb --cluster $CLUSTER_80GB -s 11 11 --RUN --fsdp_config_activation_checkpointing false
python submit_benchmarks.py --project $PROJECT -m  3b.yaml -g 8 --microbatch_size 2 --accum 16 --image $IMAGE --git_commit $GIT_COMMIT --gpu_type a100_80gb --cluster $CLUSTER_80GB -s 11 11 --RUN --fsdp_config_activation_checkpointing false
python submit_benchmarks.py --project $PROJECT -m  3b.yaml -g 8 --microbatch_size 1 --accum 16 --image $IMAGE --git_commit $GIT_COMMIT --gpu_type a100_80gb --cluster $CLUSTER_80GB -s 11 11 --RUN --fsdp_config_activation_checkpointing false

python submit_benchmarks.py --project $PROJECT -m  7b.yaml -g 8 --microbatch_size 1 --accum 16 --image $IMAGE --git_commit $GIT_COMMIT --gpu_type a100_80gb --cluster $CLUSTER_80GB -s 10 10 --RUN --fsdp_config_activation_checkpointing false
python submit_benchmarks.py --project $PROJECT -m  7b.yaml -g 8 --microbatch_size 2 --accum 16 --image $IMAGE --git_commit $GIT_COMMIT --gpu_type a100_80gb --cluster $CLUSTER_80GB -s 10 10 --RUN --fsdp_config_activation_checkpointing false
python submit_benchmarks.py --project $PROJECT -m  7b.yaml -g 8 --microbatch_size 4 --accum 16 --image $IMAGE --git_commit $GIT_COMMIT --gpu_type a100_80gb --cluster $CLUSTER_80GB -s 10 10 --RUN --fsdp_config_activation_checkpointing false
python submit_benchmarks.py --project $PROJECT -m  3b.yaml -g 8 --microbatch_size 3 --accum 16 --image $IMAGE --git_commit $GIT_COMMIT --gpu_type a100_80gb --cluster $CLUSTER_80GB -s 10 10 --RUN --fsdp_config_activation_checkpointing false
python submit_benchmarks.py --project $PROJECT -m  3b.yaml -g 8 --microbatch_size 2 --accum 16 --image $IMAGE --git_commit $GIT_COMMIT --gpu_type a100_80gb --cluster $CLUSTER_80GB -s 10 10 --RUN --fsdp_config_activation_checkpointing false
python submit_benchmarks.py --project $PROJECT -m  3b.yaml -g 8 --microbatch_size 1 --accum 16 --image $IMAGE --git_commit $GIT_COMMIT --gpu_type a100_80gb --cluster $CLUSTER_80GB -s 10 10 --RUN --fsdp_config_activation_checkpointing false

python submit_benchmarks.py --project $PROJECT -m  7b.yaml -g 8 --microbatch_size 1 --accum 16 --image $IMAGE --git_commit $GIT_COMMIT --gpu_type a100_80gb --cluster $CLUSTER_80GB -s 9 9 --RUN --fsdp_config_activation_checkpointing false
python submit_benchmarks.py --project $PROJECT -m  7b.yaml -g 8 --microbatch_size 2 --accum 16 --image $IMAGE --git_commit $GIT_COMMIT --gpu_type a100_80gb --cluster $CLUSTER_80GB -s 9 9 --RUN --fsdp_config_activation_checkpointing false
python submit_benchmarks.py --project $PROJECT -m  7b.yaml -g 8 --microbatch_size 4 --accum 16 --image $IMAGE --git_commit $GIT_COMMIT --gpu_type a100_80gb --cluster $CLUSTER_80GB -s 9 9 --RUN --fsdp_config_activation_checkpointing false
python submit_benchmarks.py --project $PROJECT -m  3b.yaml -g 8 --microbatch_size 3 --accum 16 --image $IMAGE --git_commit $GIT_COMMIT --gpu_type a100_80gb --cluster $CLUSTER_80GB -s 9 9 --RUN --fsdp_config_activation_checkpointing false
python submit_benchmarks.py --project $PROJECT -m  3b.yaml -g 8 --microbatch_size 2 --accum 16 --image $IMAGE --git_commit $GIT_COMMIT --gpu_type a100_80gb --cluster $CLUSTER_80GB -s 9 9 --RUN --fsdp_config_activation_checkpointing false
python submit_benchmarks.py --project $PROJECT -m  3b.yaml -g 8 --microbatch_size 1 --accum 16 --image $IMAGE --git_commit $GIT_COMMIT --gpu_type a100_80gb --cluster $CLUSTER_80GB -s 9 9 --RUN --fsdp_config_activation_checkpointing false

# # Test ack_ckpt differences
# python submit_benchmarks.py --project $PROJECT -m  13b.yaml -g 8 --microbatch_size 1 --accum 16 --image $IMAGE --git_commit $GIT_COMMIT --gpu_type a100_40gb --cluster $CLUSTER_40GB -s 11 11 --RUN --fsdp_config_activation_checkpointing false
# python submit_benchmarks.py --project $PROJECT -m  13b.yaml -g 8 --microbatch_size 2 --accum 16 --image $IMAGE --git_commit $GIT_COMMIT --gpu_type a100_40gb --cluster $CLUSTER_40GB -s 11 11 --RUN --fsdp_config_activation_checkpointing false
# python submit_benchmarks.py --project $PROJECT -m  13b.yaml -g 8 --microbatch_size 4 --accum 16 --image $IMAGE --git_commit $GIT_COMMIT --gpu_type a100_40gb --cluster $CLUSTER_40GB -s 11 11 --RUN --fsdp_config_activation_checkpointing false
# python submit_benchmarks.py --project $PROJECT -m  13b.yaml -g 8 --microbatch_size 3 --accum 16 --image $IMAGE --git_commit $GIT_COMMIT --gpu_type a100_40gb --cluster $CLUSTER_40GB -s 11 11 --RUN --fsdp_config_activation_checkpointing false
# python submit_benchmarks.py --project $PROJECT -m  13b.yaml -g 8 --microbatch_size 2 --accum 16 --image $IMAGE --git_commit $GIT_COMMIT --gpu_type a100_40gb --cluster $CLUSTER_40GB -s 11 11 --RUN --fsdp_config_activation_checkpointing false
# python submit_benchmarks.py --project $PROJECT -m  13b.yaml -g 8 --microbatch_size 1 --accum 16 --image $IMAGE --git_commit $GIT_COMMIT --gpu_type a100_40gb --cluster $CLUSTER_40GB -s 11 11 --RUN --fsdp_config_activation_checkpointing false

# python submit_benchmarks.py --project $PROJECT -m  13b.yaml -g 8 --microbatch_size 8 --accum 16 --image $IMAGE --git_commit $GIT_COMMIT --gpu_type a100_40gb --cluster $CLUSTER_40GB -s 10 10 --RUN --fsdp_config_activation_checkpointing false
# python submit_benchmarks.py --project $PROJECT -m  13b.yaml -g 8 --microbatch_size 6 --accum 16 --image $IMAGE --git_commit $GIT_COMMIT --gpu_type a100_40gb --cluster $CLUSTER_40GB -s 10 10 --RUN --fsdp_config_activation_checkpointing false
# python submit_benchmarks.py --project $PROJECT -m  13b.yaml -g 8 --microbatch_size 4 --accum 16 --image $IMAGE --git_commit $GIT_COMMIT --gpu_type a100_40gb --cluster $CLUSTER_40GB -s 10 10 --RUN --fsdp_config_activation_checkpointing false
# python submit_benchmarks.py --project $PROJECT -m  13b.yaml -g 8 --microbatch_size 2 --accum 16 --image $IMAGE --git_commit $GIT_COMMIT --gpu_type a100_40gb --cluster $CLUSTER_40GB -s 10 10 --RUN --fsdp_config_activation_checkpointing false
# python submit_benchmarks.py --project $PROJECT -m  13b.yaml -g 8 --microbatch_size 1 --accum 16 --image $IMAGE --git_commit $GIT_COMMIT --gpu_type a100_40gb --cluster $CLUSTER_40GB -s 10 10 --RUN --fsdp_config_activation_checkpointing false # PASSED
# python submit_benchmarks.py --project $PROJECT -m  13b.yaml -g 8 --microbatch_size 1 --accum 16 --image $IMAGE --git_commit $GIT_COMMIT --gpu_type a100_40gb --cluster $CLUSTER_40GB -s 10 10 --RUN  --fsdp_config_activation_checkpointing false # PASSED
# python submit_benchmarks.py --project $PROJECT -m  13b.yaml -g 8 --microbatch_size 1 --accum 4 --image $IMAGE --git_commit $GIT_COMMIT --gpu_type a100_40gb --cluster $CLUSTER_40GB -s 10 10 --RUN --fsdp_config_activation_checkpointing false # PASSED
# python submit_benchmarks.py --project $PROJECT -m  13b.yaml -g 8 --microbatch_size 2 --accum 4 --image $IMAGE --git_commit $GIT_COMMIT --gpu_type a100_40gb --cluster $CLUSTER_40GB -s 10 10 --RUN --fsdp_config_activation_checkpointing false
# python submit_benchmarks.py --project $PROJECT -m  13b.yaml -g 8 --microbatch_size 4 --accum 4 --image $IMAGE --git_commit $GIT_COMMIT --gpu_type a100_40gb --cluster $CLUSTER_40GB -s 10 10 --RUN --fsdp_config_activation_checkpointing false


# python submit_benchmarks.py --project $PROJECT -m  7b.yaml -g 8 --microbatch_size 1 --accum 4 --image $IMAGE --git_commit $GIT_COMMIT --gpu_type a100_40gb --cluster $CLUSTER_40GB -s 10 10 --RUN --fsdp_config_activation_checkpointing false
# python submit_benchmarks.py --project $PROJECT -m  7b.yaml -g 8 --microbatch_size 2 --accum 4 --image $IMAGE --git_commit $GIT_COMMIT --gpu_type a100_40gb --cluster $CLUSTER_40GB -s 10 10 --RUN --fsdp_config_activation_checkpointing false
# python submit_benchmarks.py --project $PROJECT -m  7b.yaml -g 8 --microbatch_size 4 --accum 4 --image $IMAGE --git_commit $GIT_COMMIT --gpu_type a100_40gb --cluster $CLUSTER_40GB -s 10 10 --RUN --fsdp_config_activation_checkpointing false
# python submit_benchmarks.py --project $PROJECT -m  7b.yaml -g 8 --microbatch_size 8 --accum 4 --image $IMAGE --git_commit $GIT_COMMIT --gpu_type a100_40gb --cluster $CLUSTER_40GB -s 10 10 --RUN --fsdp_config_activation_checkpointing false

# python submit_benchmarks.py --project $PROJECT -m  7b.yaml -g 8 --microbatch_size 1 --accum 16 --image $IMAGE --git_commit $GIT_COMMIT --gpu_type a100_40gb --cluster $CLUSTER_40GB -s 10 10 --RUN --fsdp_config_activation_checkpointing false
# python submit_benchmarks.py --project $PROJECT -m  7b.yaml -g 8 --microbatch_size 2 --accum 16 --image $IMAGE --git_commit $GIT_COMMIT --gpu_type a100_40gb --cluster $CLUSTER_40GB -s 10 10 --RUN --fsdp_config_activation_checkpointing false
# python submit_benchmarks.py --project $PROJECT -m  7b.yaml -g 8 --microbatch_size 4 --accum 16 --image $IMAGE --git_commit $GIT_COMMIT --gpu_type a100_40gb --cluster $CLUSTER_40GB -s 10 10 --RUN --fsdp_config_activation_checkpointing false
# python submit_benchmarks.py --project $PROJECT -m  7b.yaml -g 8 --microbatch_size 8 --accum 16 --image $IMAGE --git_commit $GIT_COMMIT --gpu_type a100_40gb --cluster $CLUSTER_40GB -s 10 10 --RUN --fsdp_config_activation_checkpointing false

# NOTE: Tried the commented ones last night, OOM'd
# python submit_benchmarks.py --project $PROJECT -m  13b.yaml -g 8 --microbatch_size 14 --accum 16 --image $IMAGE --git_commit $GIT_COMMIT --gpu_type a100_40gb --cluster $CLUSTER_40GB -s 9 9 --RUN --fsdp_config_activation_checkpointing false
# python submit_benchmarks.py --project $PROJECT -m  13b.yaml -g 8 --microbatch_size 12 --accum 16 --image $IMAGE --git_commit $GIT_COMMIT --gpu_type a100_40gb --cluster $CLUSTER_40GB -s 9 9 --RUN --fsdp_config_activation_checkpointing false
# python submit_benchmarks.py --project $PROJECT -m  13b.yaml -g 8 --microbatch_size 10 --accum 16 --image $IMAGE --git_commit $GIT_COMMIT --gpu_type a100_40gb --cluster $CLUSTER_40GB -s 9 9 --RUN --fsdp_config_activation_checkpointing false
# python submit_benchmarks.py --project $PROJECT -m  13b.yaml -g 8 --microbatch_size 8 --accum 16 --image $IMAGE --git_commit $GIT_COMMIT --gpu_type a100_40gb --cluster $CLUSTER_40GB -s 9 9 --RUN --fsdp_config_activation_checkpointing false
# python submit_benchmarks.py --project $PROJECT -m  13b.yaml -g 8 --microbatch_size 4 --accum 16 --image $IMAGE --git_commit $GIT_COMMIT --gpu_type a100_40gb --cluster $CLUSTER_40GB -s 9 9 --RUN --fsdp_config_activation_checkpointing false
# python submit_benchmarks.py --project $PROJECT -m  13b.yaml -g 8 --microbatch_size 4 --accum 8 --image $IMAGE --git_commit $GIT_COMMIT --gpu_type a100_40gb --cluster $CLUSTER_40GB -s 9 9 --RUN --fsdp_config_activation_checkpointing false
# python submit_benchmarks.py --project $PROJECT -m  13b.yaml -g 8 --microbatch_size 4 --accum 4 --image $IMAGE --git_commit $GIT_COMMIT --gpu_type a100_40gb --cluster $CLUSTER_40GB -s 9 9 --RUN --fsdp_config_activation_checkpointing false
# python submit_benchmarks.py --project $PROJECT -m  13b.yaml -g 8 --microbatch_size 2 --accum 16 --image $IMAGE --git_commit $GIT_COMMIT --gpu_type a100_40gb --cluster $CLUSTER_40GB -s 9 9 --RUN --fsdp_config_activation_checkpointing false # PASSED
# python submit_benchmarks.py --project $PROJECT -m  13b.yaml -g 8 --microbatch_size 8 --accum 16 --image $IMAGE --git_commit $GIT_COMMIT --gpu_type a100_40gb --cluster $CLUSTER_40GB -s 7 7 --RUN --fsdp_config_activation_checkpointing false #PASSED