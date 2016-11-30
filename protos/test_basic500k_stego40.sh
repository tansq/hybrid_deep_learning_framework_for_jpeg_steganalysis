#!/usr/bin/env sh

../dctrqt_caffe/build/tools/caffe test --model=./basic500k_stego40_exp.prototxt  --weights=./basic500k_stego40_exp_trained.caffemodel --iterations 50000 -gpu 10 2>&1 | tee  ./test_basick500k_stego40.log  
