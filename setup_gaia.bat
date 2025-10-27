@echo off
echo Extracting GAIA...
powershell -Command "Expand-Archive -Force GAIA_Full_Autonomous.zip GAIA"

cd GAIA\GAIA

echo Building Docker image...
docker build -t gaia-nexus .

echo Running GAIA...
docker run --rm --env-file ..\.env gaia-nexus
pause
