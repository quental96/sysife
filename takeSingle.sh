DATE=$(date)
raspistill -t 1 -n -bm -o "$(dirname $0)/Photos/$DATE.jpg"