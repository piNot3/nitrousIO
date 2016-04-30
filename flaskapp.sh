V=15.0.1
sudo apt-get -y install nginx python2.7-dev
wget https://github.com/piNot3/nitrousIO/archive/master.zip https://pypi.python.org/packages/source/v/virtualenv/virtualenv-$V.tar.gz
unzip master.zip -x nitrousIO-master/README.md nitrousIO-master/flaskapp.sh
mv nitrousIO-master flaskapp
tar -xf virtualenv-$V.tar.gz
python2 virtualenv-$V/virtualenv.py flaskapp/.env
flaskapp/.env/bin/pip install flask uwsgi
sudo cp flaskapp/flaskapp.conf /etc/init
sudo cp flaskapp/flaskapp /etc/nginx/sites-available
sudo ln -s /etc/nginx/sites-available/flaskapp /etc/nginx/sites-enabled/flaskapp
rm -R master.zip virtualenv-$V virtualenv-$V.tar.gz flaskapp/flaskapp.conf flaskapp/flaskapp flaskapp.sh