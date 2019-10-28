#!/bin/sh
if ! test -f ThesisFish_body/example/MobileNetSSD_train.prototxt ;then
	echo "error: example/MobileNetSSD_train.prototxt does not exist."
	echo "please use the gen_model.sh to generate your own model."
        exit 1
fi
mkdir -p snapshot
/content/caffe/build/tools/caffe train -solver="ThesisFish_body/solver_train.prototxt" \
-weights="ThesisFish_body/mobilenet_iter_73000.caffemodel" \
-gpu 0

# -snapshot  snapshot/mobilenet_iter_106000.solverstate \
