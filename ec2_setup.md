Getting an EC2 instance running with docker/postgres
-------
Setting things up end to end so that we can create and serve a web service connected to a database on ec2.


# install dependencies
sudo yum install tmux
sudo yum install docker

sudo yum search "postgres"		# look for latest
sudo yum install postgresql16 

# https://stackoverflow.com/questions/12911717/error-command-gcc-failed-with-exit-status-when-installing-psycopg2
# Install dependencies for python's psycopg2 library
sudo yum install postgresql-libs
sudo yum install postgresql-devel
sudo yum install python-devel
sudo yum install gcc*


sudo systemctl start docker
sudo apt install nginx

# Get postgres running
sudo docker pull postgres:latest
sudo docker volume create postgres-volume
sudo docker run --name my-postgres --env POSTGRES_PASSWORD=admin --volume postgres-volume:/var/lib/postgresql/data --publish 5432:5432 --detach postgres

sudo docker ls
sudo docker exec -it c49bc8989c07 bash

# login and connec to table (note the password created in the docker run step above)
psql -h localhost -p 5432 -U postgres -W 

CREATE TABLE cars (
  brand VARCHAR(255),
  model VARCHAR(255),
  year INT
);

\dt # show tables

SELECT * FROM cars;

INSERT INTO cars (brand, model, year)
VALUES ('bmw', 'x1', 2015);

# create python environment
python3 -m venv .venv
source $(find . -iname activate)
pip3 install flask



# Code for a server
from flask import Flask

app = Flask(__name__)

@app.route("/")
def hello_world():
    return "<p>Hello, World!</p>"

# Then
flask --app server run


# Test
curl localhost:5000

# Setup nginx and hosting. https://www.geeksforgeeks.org/how-to-deploy-flask-app-on-aws-ec2-instance/
https://us-west-1.console.aws.amazon.com/ec2/home?region=us-west-1#InstanceDetails:instanceId=i-05af506da157246ac

sudo systemctl start nginx

# test with local machine against the foreign ip
curl 54.183.31.178

# /etc/nginx/sites-enabled
# hint: :set paste in paste to avoid weird indentation
# note: I never actually figured this part out so :shrug:
server {
    listen 80;
    listen [::]:80;
    server_name 54.183.31.178;
        
    location / {
        proxy_pass http://127.0.0.1:5000;
        include proxy_params;
    }
}
