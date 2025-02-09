# Litter Locator

An AI-powered litter detection system leveraging **YOLOv5** and **Convolutional Neural Networks (CNNs)** for real-time waste detection. The project achieved **90% accuracy** and improved waste detection speed by **35%** compared to traditional methods.

## Table of Contents
1. [Features](#features)
2. [Project Structure](#project-structure)
3. [Installation](#installation)
4. [How to Run](#how-to-run)
5. [Sample Output](#sample-output)
6. [Contributing](#contributing)
7. [License](#license)

## Features
- **Real-Time Detection**: Detects litter using a custom-trained YOLOv5 model.
- **High Accuracy**: Achieved 90% detection accuracy across varied environments.
- **Improved Speed**: Enhanced waste detection speed by 35%.
- **Modular Design**: Easy to modify and extend for different detection tasks.

## Project Structure
```
Litter-Locator/
├── data/                # Datasets and training files
│   ├── obj/
│   └── TrashDataset/
├── models/              # YOLOv5 trained models
│   └── training-20250209T133947Z-001/
├── scripts/             # Shell scripts to run detection
│   └── runthis.sh
├── media/               # Test videos and images
│   ├── Test_Vid.mp4
│   ├── TestIMG1.jpg
│   └── results1.avi
├── TrashDataset.ipynb   # Jupyter notebook for training and testing
└── README.md            # Project documentation
```

## Installation

1. **Clone the repository:**
   ```bash
   git clone https://github.com/akhiljoshi7060/Litter-Locator.git
   cd Litter-Locator
   ```

2. **Set up a virtual environment (optional but recommended):**
   ```bash
   python -m venv venv
   source venv/bin/activate  # On Windows: venv\Scripts\activate
   ```

3. **Install the required dependencies:**
   ```bash
   pip install -r requirements.txt
   ```

## How to Run

1. **Run the detection script:**
   ```bash
   bash scripts/runthis.sh
   ```

2. **Test with images or videos manually:**
   ```bash
   python detect.py --source media/TestIMG1.jpg
   python detect.py --source media/Test_Vid.mp4
   ```

3. **View results:**
   - Processed images and videos will be saved in the `media/` folder.

## Sample Output

### Image Detection
![Detection Result](media/TestIMG1.jpg)

### Video Detection
- Output video: `media/results1.avi`

## Contributing

Contributions are welcome! Please follow these steps:
1. Fork the repository.
2. Create a new branch (`git checkout -b feature-branch`).
3. Commit your changes (`git commit -m 'Add new feature'`).
4. Push to the branch (`git push origin feature-branch`).
5. Create a pull request.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.


