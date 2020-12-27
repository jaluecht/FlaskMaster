#! /bin/bash

source activate MasterFlask
export FLASK_APP=main.py
flask run -h "192.168.1.213" -p 5000