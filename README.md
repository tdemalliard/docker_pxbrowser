# docker_PX-browser
dockerfiles

sudo apt-get install python3-pip build-essential python3-dev

# Install virtualenv
sudo pip3 install virtualenv

# Set up the virtual environnement
virtualenv -p python3 myEnv

# Launch the env
source myEnv/bin/activate

# Install some packages
pip install numpy
pip install scipy
pip install pandas
pip install flask
pip install ipython
pip install cairosvg
pip install querystring-parser

deactivate

##

sudo apt-get install libssl-dev libffi-dev
sudo apt-get install gcc python-dev
sudo apt-get install byobu
sudo apt-get install git
sudo apt-get install liblapack-dev libatlas-dev gfortran
sudo apt-get install libsqlite3-dev
sudo apt-get install pip


wget http://python.org/ftp/python/2.7.9/Python-2.7.9.tgz
tar -xvzf Python-2.7.9.tgz
cd Python-2.7.9

mkdir /home/share/python2.7
./configure --prefix=/home/share/python2.7 && make && make install


pip install virtualenv

cd /home/share
sudo virtualenv -p python2.7/bin/python Env2.7
. /home/share/Env2.7/bin/activate

sudo /home/share/Env2.7/bin/pip install scipy
sudo /home/share/Env2.7/bin/pip install pandas
sudo /home/share/Env2.7/bin/pip install flask
sudo /home/share/Env2.7/bin/pip install ipython
sudo /home/share/Env2.7/bin/pip install cairosvg
sudo /home/share/Env2.7/bin/pip install querystring-parser
sudo /home/share/Env2.7/bin/pip install sqlite3
sudo /home/share/Env2.7/bin/pip install pysqlite

###
git clone https://github.com/Melkaz/PX-browser.git
cd /ssd/PX-browser

/home/share/Env2.7/bin/python run.py prod

#


