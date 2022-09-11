sudo apt-get update
sudo apt-get upgrade

echo -n "Enter date (Format example "Thu Aug 9 21:31:26 UTC 2012") and press [ENTER]: "
read dateO
sudo date -s $dateO

echo "Make sure camera is connected."
sudo raspi-config nonint do_camera 1

echo -n "Enter time of capture and press [ENTER]: "
read nO
echo $nO>temps.txt

echo "sudo sh $(pwd)/takeSerie.sh" >> /home/pi/.bashrc
