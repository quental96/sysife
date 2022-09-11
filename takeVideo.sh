DATE=$(date)
raspivid -fps 30 -t 5000 -o "Desktop/CameraModule/Videos/$DATE.h264"