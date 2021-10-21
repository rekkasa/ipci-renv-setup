#!/bin/bash

echo "-------------------------"
echo "## Starting IPCI-renv ##"
echo "-------------------------"
echo "---------------------------------"
echo "## Installing required packages ##"
echo "----------------------------------"
sudo apt install wget build-essential gfortran  zlib1g zlib1g-dev \
 libbz2-dev liblzma-dev libpcre2-dev libcurl4-openssl-dev \
 default-jre default-jdk git libxml2-dev libssl-dev -y


echo "------------------"
echo "## Setting up R ##"
echo "------------------"
read -ep "R version: " rVersion
majorRVersion=${rVersion:0:1}
wget "https://cran.r-project.org/src/base/R-${majorRVersion}/R-${rVersion}.tar.gz"
tar -xvf "R-${rVersion}.tar.gz"

pushd "R-${rVersion}"
./configure --with-readline=no --with-x=no && make
sudo ln -s ~/R-${rVersion}/bin/* /usr/bin
popd

sudo R CMD javareconf


echo "------------------------------------"
echo "## Setting up study repo and renv ##"
echo "------------------------------------"

read -ep "Github location of project: " githubStudy
git clone https://github.com/${githubStudy}.git

pushd ${githubStudy##*/}
../renv-setup.R
popd