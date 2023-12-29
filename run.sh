# CUDA_VISIBLE_DEVICES=0 python3 main.py      --caption_file data/instruct_captions.json     --model declare-lab/flan-alpaca-base     --user_msg rationale --img_type vit     --bs 32 --eval_bs 32 --epoch 20 --lr 8e-5 --output_len 512     --use_generate --final_eval --prompt_format QCM-E     --output_dir experiments     --evaluate_dir models/mm-cot-base-rationale
CUDA_VISIBLE_DEVICES=0 python main.py      --caption_file data/instruct_captions.json     --model declare-lab/flan-alpaca-base     --user_msg rationale --img_type vit     --bs 8 --eval_bs 8 --epoch 20 --lr 8e-5 --output_len 64     --use_generate --prompt_format QCMG-A     --output_dir experiments     --eval_le models/mm-cot-base-rationale/predictions_ans_eval.json     --test_le models/mm-cot-base-rationale/predictions_ans_test.json     --evaluate_dir models/mm-cot-base-ans

# CUDA_VISIBLE_DEVICES=0 python3 main.py \
#     --caption_file data/instruct_captions.json \
#     --model declare-lab/flan-alpaca-base \
#     --user_msg rationale --img_type vit \
#     --bs 8 --eval_bs 8 --epoch 20 --lr 8e-5 --output_len 64 \
#     --use_generate --prompt_format QCMG-A \
#     --output_dir experiments \
#     --eval_le models/mm-cot-base-rationale/predictions_ans_eval.json \
#     --test_le models/mm-cot-base-rationale/predictions_ans_test.json \
#     --evaluate_dir models/mm-cot-base-answer