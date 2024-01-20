#! /bin/sh
#
# run_master.sh
# Copyright (C) 2024 tiger1218 <tiger1218@Buwuhou-s-Archlinux>
#
# Distributed under terms of the MIT license.
#


torchrun --nnodes=2 --nproc_per_node=4 --node_rank=0 --master_addr=$MASTER_ADDR --master_port=$MASTER_PORT benchmark.py --ckpt_dir llama-2-70b/ --tokenizer_path ./llama-2-70b/tokenizer.model --max_seq_len 512 --max_batch_size 6
