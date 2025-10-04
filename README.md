# Litter Locator

## Overview

Litter Locator is a UAV-based trash detection project that uses deep learning object detection models. It evaluates different versions of YOLO (v3, v4, v4-tiny, v5, v6, v7) and RNN-based approaches to balance accuracy and speed. The system is designed for deployment on NVIDIA Jetson Xavier NX under power and space constraints.

## Features

* UAV integration for aerial litter detection
* Models tested: YOLOv3, YOLOv4, YOLOv4-Tiny, YOLOv5, YOLOv6, YOLOv7, and RNN-based models
* Hardware-aware design optimized for Jetson Xavier NX
* Evaluated with INT8, FP16, FP32, FP64 precision modes
* Custom lightweight YOLO variant proposed for faster inference
* Dataset of 772 aerial images with 3,718 annotations (bounding boxes and segmentation masks)

## Prerequisites

Operating System:

* Ubuntu 20.04 / 22.04 (recommended)

Required Software:

* Python 3.8+
* TensorFlow (for custom training)
* PyTorch (for YOLOv5+)
* OpenCV
* YOLO dependencies

## Installation

1. Clone repository:

   ```bash
   git clone https://github.com/akhiljoshi7060/Litter-Locator.git
   cd Litter-Locator
   ```

2. Install dependencies (example for YOLOv5):

   ```bash
   git clone https://github.com/ultralytics/yolov5
   cd yolov5
   pip install -r requirements.txt
   ```

3. Prepare dataset:

   * Dataset includes 772 images with 3,718 annotations
   * Place dataset under `Data/`

4. Train model (example YOLOv5):

   ```bash
   python train.py --img 640 --batch 16 --epochs 50 --data litter.yaml --weights yolov5s.pt
   ```

5. Run detection:

   ```bash
   python detect.py --weights runs/train/exp/weights/best.pt --img 640 --source 0
   ```

## Project Structure

Litter-Locator/
├── Data/             (dataset files)
├── media/            (reference images/videos)
├── models/           (trained YOLO models)
├── scripts/          (helper scripts)
├── .gitignore
├── README.md

## Performance

* Metrics: Mean Average Precision (mAP) and Intersection over Union (IoU)
* INT8/FP16: Faster inference, lower accuracy
* FP32/FP64: Higher accuracy, slower inference
* YOLOv7: Best accuracy
* YOLOv4-Tiny and custom model: Best inference speed for UAV use

## License

This project is licensed under the MIT License.

## Author

Akhil Joshi
GitHub: [@akhiljoshi7060](https://github.com/akhiljoshi7060)

## Contact

For questions or contributions:

* Open an issue on GitHub Issues
* Pull requests are welcome

## Requirements.txt

numpy
pandas
opencv-python
torch
torchvision
tensorflow
matplotlib
pyyaml
scipy
seaborn
ultralytics
