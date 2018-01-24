cd WiringOP/
sudo ./build
sudo make install
cd ..
export CFLAGS="-lwiringPi -lwiringPiDev"

swig2.0 -python -threads wiringpi.i
sudo python3 setup.py build install
sudo python3 test.py
