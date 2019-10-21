# Text Summarization

There are 4 folders.

DFA_Augmented contains the script to run Diversity Based Attention with Augmented Debatepedia Training Data. Most of the codes are collected from the official [Repository](https://github.com/PrekshaNema25/DiverstiyBasedAttentionMechanism)

DDA_Original contains the script to run Diversity Based Attention without Augmented Debatepedia Training Data. Most of the codes are collected from the official [Repository](https://github.com/PrekshaNema25/DiverstiyBasedAttentionMechanism)

PGN_DP contains the script to run Pointer Generation Network in Debatepedia Dataset. Most of the codes are collected from this [Repository](https://github.com/talbaumel/RSAsummarization) and the official [Repository](https://github.com/abisee/pointer-generator)

BERTSUM_QFAS contains the script to run BERTSUM in Debatepedia Dataset. Most of the codes are collected from the official [Repository](https://github.com/nlpyang/PreSumm)

Instructions to run the codes are given in the official repository of each model. 

For DBA_Augmented and DBA_Original, 'data_fold' folder contains 10 fold cross validations data. The 'data' folder contains the dataset with given train-test-valid split for 1 fold experiment for few-shot learning to compare with PGN and BERTSUM.

For PGN_DP pre-processed bin files are given [here](https://github.com/tahmedge/Text-Summarization/tree/master/PGN_DP/dp_stories_PGN) to run the model in Debatepedia dataset.

For BERTSUM_QFAS, pre-processed python files are given [here](https://github.com/tahmedge/Text-Summarization/tree/master/BERTSUM_QFAS/dp_stories_tokenized_newline_without_query_bert) to run the model in Debatepedia dataset.
