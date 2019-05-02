#!/usr/bin/env bash
CURRENT_DIR=$(pwd)
WORK_DIR="./indusai"
indusai_ROOT="${WORK_DIR}/dataset"
SEG_FOLDER="${PQR_ROOT}/SegmentationClass"
SEMANTIC_SEG_FOLDER="${indusai_ROOT}/SegmentationClassRaw"
# Build TFRecords of the dataset.
OUTPUT_DIR="${WORK_DIR}/tfrecord"
mkdir -p "${OUTPUT_DIR}"
IMAGE_FOLDER="${indusai_ROOT}/JPEGImages"
LIST_FOLDER="${indusai_ROOT}/ImageSets"
echo "Converting indusai dataset..."
python ./build_indusai_data.py \
  --image_folder="${IMAGE_FOLDER}" \
  --semantic_segmentation_folder="${SEMANTIC_SEG_FOLDER}" \
  --list_folder="${LIST_FOLDER}" \
  --image_format="jpg" \
  --output_dir="${OUTPUT_DIR}"
