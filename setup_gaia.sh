#!/bin/bash

# מחלץ את ZIP של GAIA
echo "Extracting GAIA..."
unzip -o GAIA_Full_Autonomous.zip -d GAIA

# נכנס לתיקייה
cd GAIA/GAIA || exit

# בונה את Docker image
echo "Building Docker image..."
docker build -t gaia-nexus .

# מריץ את GAIA
echo "Running GAIA..."
docker run --rm --env-file ../.env gaia-nexus
