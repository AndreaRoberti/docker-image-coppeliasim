@echo off
set COPPELIASIM_RELEASE=CoppeliaSim_Edu_V4_5_1_rev4_Ubuntu20_04.tar.xz
if not exist download/%COPPELIASIM_RELEASE% (
    echo Download https://www.coppeliarobotics.com/files/%COPPELIASIM_RELEASE% and place into the download directory located in this repository.
    exit /b
)
echo on
docker build --rm -f Dockerfile -t coppeliasim-ubuntu20:latest .
