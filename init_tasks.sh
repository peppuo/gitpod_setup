#!/bin/bash

echo "Checking if pip upgrade"
pip3 install --upgrade pip

echo "Installing packages from requirements.txt"
pip3 install -r requirements.txt
