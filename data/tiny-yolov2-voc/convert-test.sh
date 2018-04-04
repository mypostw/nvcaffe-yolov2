CAFFE_ROOT=../../
ROOT_DIR=./
LABEL_FILE=$CAFFE_ROOT/data/tiny-yolo-voc/label_map.txt

# 2007 test
LIST_FILE=$CAFFE_ROOT/data/yolo/test_2007.txt
LMDB_DIR=./lmdb/test2007_lmdb
SHUFFLE=false

RESIZE_W=416
RESIZE_H=416

$CAFFE_ROOT/build/tools/convert_box_data --resize_width=$RESIZE_W --resize_height=$RESIZE_H \
--label_file=$LABEL_FILE $ROOT_DIR $LIST_FILE $LMDB_DIR --encoded=true --encode_type=jpg --shuffle=$SHUFFLE
