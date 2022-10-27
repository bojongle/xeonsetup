#!/bin/bash
curl -o nordvpn.rpm https://repo.nordvpn.com/yum/nordvpn/centos/noarch/Packages/n/nordvpn-release-1.0.0-1.noarch.rpm?_gl=1*oxmyy*_ga*MTA3MDMyMjQ3Mi4xNjY2NjY2ODgx*_ga_LEXMJ1N516*MTY2Njc4MzA5My4zLjEuMTY2Njc4MzA5NS41OC4wLjA.*_gid*MjAzMjE2NTUxMC4xNjY2NzgzMDk0&_ga=2.146830839.1773967046.1666774485-1070322472.1666666881
rpm -Uvh nordvpn.rpm
rpm -i nordvpn.rpm

sudo usermod -a -G nordvpn $USER

sudo systemctl enable nordvpnd.service



