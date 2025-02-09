cd yolov4/darknet
make clean  
export PATH=/usr/local/cuda-10.2/bin${PATH:+:${PATH}}        
make
sudo jetson_clocks
./darknet detector demo data/obj.data cfg/yolov4-custom.cfg yolov4-custom_best.weights "nvarguscamerasrc ! video/x-raw(memory:NVMM), width=1920, height=1080, format=(string)NV12, framerate=(fraction)30/1 ! nvvidconv flip-method=2  ! video/x-raw, format=(string)BGRx ! videoconvert ! video/x-raw, format=(string)BGR ! appsink"
