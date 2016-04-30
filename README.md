# nitrousIO - Flask with Uwsgi in Ubuntu

This is the **simplest** and **fastest** install of flask with virtualenv for developing.

## Instructions

1. **Upgrade and update ubuntu (recommended)**

  ```
  sudo apt-get upgrade
  sudo apt-get update
  ```

2. **Download the shell file and run it**

  ```
  wget https://github.com/piNot3/nitrousIO/raw/master/flaskapp.sh
  bash flaskapp.sh
  ```

3. **Restart Nginx to apply changes and run the flask app**

  ```
  sudo service nginx restart
  sudo start flaskapp
  ```

4. **Preview the result**

  Preview > Port 3000

When you make modifications, you can restart the flask app

  ```
  sudo restart flaskapp
  ```

**Tips**

  Right click on folder flaskapp > Set "flaskapp" As Root
  
  Click on 3 vertical dots > Show Hidden Files
