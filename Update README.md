# Litter Locator

A UAV-based trash detection project using deep learning models (YOLO family and others), optimized for deployment on NVIDIA Jetson Xavier NX.

---

## Overview

The Litter Locator project focuses on detecting and classifying trash such as bottles, cans, and wrappers from aerial images captured by drones (UAVs). The system evaluates multiple YOLO versions and related models to find the best balance between accuracy and speed for practical environmental monitoring.

---

## Features

* UAV integration for aerial litter detection.
* Multiple models tested: YOLOv3, YOLOv4, YOLOv4-Tiny, YOLOv5, YOLOv6, YOLOv7, and RNN-based models.
* Optimized for NVIDIA Jetson Xavier NX under space and power constraints.
* Benchmarked using INT8, FP16, FP32, and FP64 precision modes.
* Custom lightweight design proposed for higher inference speed by simplifying YOLO.
* Dataset of 772 aerial images with 3,718 annotations (bounding boxes + segmentation masks).

---

## Prerequisites

**Operating System:**

* Ubuntu 20.04 / 22.04 (recommended)

**Required Software:**

* Python 3.8+
* TensorFlow (for custom training)
* PyTorch (for YOLOv5+)
* OpenCV
* YOLO model dependencies

**Install Dependencies (example for YOLOv5):**

```bash
git clone https://github.com/ultralytics/yolov5
cd yolov5
pip install -r requirements.txt
```

---

## Installation

**Step 1: Clone Repository**

```bash
git clone https://github.com/akhiljoshi7060/Litter-Locator.git
cd Litter-Locator
```

**Step 2: Setup Environment**

```bash
pip install -r requirements.txt
```

**Step 3: Prepare Dataset**

* Dataset includes 772 images with 3,718 annotations.
* Pre-annotated with bounding boxes and segmentation masks.
* Place dataset under `datasets/`.

**Step 4: Train Models**
Example (YOLOv5):

```bash
python train.py --img 640 --batch 16 --epochs 50 --data litter.yaml --weights yolov5s.pt
```

**Step 5: Run Detection**

```bash
python detect.py --weights runs/train/exp/weights/best.pt --img 640 --source 0
```

Use `--source 0` for webcam or provide a path to an image/video.

---

## Project Structure

```
Litter-Locator/
├── datasets/           # Training and validation datasets
├── models/             # Trained YOLO models
├── scripts/            # Helper scripts
├── results/            # Detection outputs
├── requirements.txt    # Dependencies
├── README.md           # Project documentation
└── LICENSE
```

---

## Technologies Used

* YOLOv3/v4/v5/v6/v7 for object detection.
* YOLO-Tiny for faster, lightweight inference.
* RNN as an experimental detection approach.
* TensorFlow with custom training library.
* PyTorch for YOLOv5+.
* OpenCV for image processing.
* Jetson Xavier NX for edge deployment.
* Google Colab for GPU training.

---

## Use Cases

* Drones (UAVs): Detect trash in parks, beaches, or disaster zones.
* Smart cities: Monitor cleanliness in public spaces.
* Environmental studies: Collect data on waste distribution.
* Robotics: Enable robotic systems for waste pickup.

---

## Performance

* Evaluation metrics: Mean Average Precision (mAP) and Intersection over Union (IoU).
* Precision vs speed trade-offs:

  * INT8/FP16: Faster inference, lower accuracy.
  * FP32/FP64: Higher accuracy, slower inference.
* Results:

  * YOLOv7 achieved the best accuracy.
  * YOLOv4-Tiny and the custom lightweight model gave the best inference speed.

---

## License

This project is licensed under the MIT License.

---

## Author

Akhil Joshi
GitHub: [@akhiljoshi7060](https://github.com/akhiljoshi7060)

---

## Contact

For questions, issues, or contributions:

* Open an issue on [GitHub Issues](https://github.com/akhiljoshi7060/Litter-Locator/issues)
* Pull requests are welcome
