#!/bin/sh
#latest=/content/drive/Thesis_body/snapshot/mobilenet_iter_73000.caffemodel
latest=$(ls -t /content/drive/Thesis_body/snapshot/*.caffemodel | head -n 1)
if test -z $latest; then
	exit 1
fi
/content/caffe/build/tools/caffe train -solver="ThesisFish_body/solver_test.prototxt" \
--weights=$latest \
-gpu 0
