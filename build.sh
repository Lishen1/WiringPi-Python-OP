echo building wiringpi lib.. 
cd WiringPi/

sudo chmod +x build
sudo ./build
cd ..

echo building wiringpi python binding.. 
export CFLAGS="-lwiringPi -lwiringPiDev"

swig2.0 -python -threads wiringpi.i
sudo python setup.py install