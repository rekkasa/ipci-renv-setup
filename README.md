# Setup `renv` to IPCI

Run this script to setup a study package in IPCI that uses `renv`. The script
will prompt you for the `R` version (given as X.X.X) and the github repo given
as `repo/project`.

## Usage

In the home directory of a virtual machine running `Ubuntu Server 16.4.X` run

```
git clone https://github.com/rekkasa/ipci-renv-setup.git
cd ipci-renv-setup
chmod +x ipci-renv-setup/ipci-renv.sh ipci-renv-setup/renv-setup.R
./ipci-renv.sh
```
