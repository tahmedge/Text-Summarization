#!/bin/bash
#SBATCH --nodes=1
#SBATCH --gres=gpu:lgpu:4
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=24
#SBATCH --mem=125G
#SBATCH --time=0-30:59
#SBATCH --account=def-enamul

source ~/ENV3/bin/activate


export BERT_DATA_PATH="/home/tahmedge/projects/def-enamul/tahmedge/PreSumm_QFAS/dp_stories_tokenized_newline_without_query_bert_long/"

export MODEL_PATH="/home/tahmedge/projects/def-enamul/tahmedge/PreSumm_QFAS/model_dp_abs_new_line_without_query_long/"

export EXT_CKPT="/home/tahmedge/projects/def-enamul/tahmedge/PreSumm_QFAS/model_ext/model_step_20000.pt"


python "/home/tahmedge/projects/def-enamul/tahmedge/PreSumm_QFAS/src/train.py"  -task abs -mode train -bert_data_path $BERT_DATA_PATH -dec_dropout 0.2  -model_path $MODEL_PATH -sep_optim true -lr_bert 0.002 -lr_dec 0.2 -save_checkpoint_steps 4000 -batch_size 500 -train_steps 80000 -report_every 5000 -accum_count 5 -use_bert_emb true -use_interval true -warmup_steps_bert 8000 -warmup_steps_dec 2000 -max_pos 100 -visible_gpus 0,1,2,3 -log_file "/home/tahmedge/projects/def-enamul/tahmedge/PreSumm_QFAS/logs/dp_wo.log" 
#-train_from "/home/tahmedge/projects/def-enamul/tahmedge/PreSumm_QFAS/model_dp_abs_newline_line_without_query/model_step_12000.pt"


