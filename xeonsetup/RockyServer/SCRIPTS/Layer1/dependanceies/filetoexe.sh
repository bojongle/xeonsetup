#!/bin/bash

##this script is to make all these scripts executeable

#directory setups
chmod +x RockyServer/SCRIPTS/Layer 2/directories/dockerdirs.sh
chmod +x RockyServer/SCRIPTS/Layer 2/directories/utilitydirs.sh

#python installs
chmod +x RockyServer/SCRIPTS/Layer 2/languages/python/flaskinstall.sh
chmod +x RockyServer/SCRIPTS/Layer 2/languages/python/kivyinstall.sh

#ruby installs
chmod +x RockyServer/SCRIPTS/Layer 2/languages/ruby/railsinstall.sh
chmod +x RockyServer/SCRIPTS/Layer 2/languages/ruby/rubyinstall.sh

#package manager
chmod +x RockyServer/SCRIPTS/Layer 2/PackageManager/PackageManagers/APTInstall.sh
chmod +x RockyServer/SCRIPTS/Layer 2/PackageManager/PackageManagers/APTinstaller.sh
chmod +x RockyServer/SCRIPTS/Layer 2/PackageManager/PackageManagers/curlinstall.sh
chmod +x RockyServer/SCRIPTS/Layer 2/PackageManager/PackageManagers/PIPinstall.sh
chmod +x RockyServer/SCRIPTS/Layer 2/PackageManager/PackageManagers/snapinstall.sh
chmod +x RockyServer/SCRIPTS/Layer 2/PackageManager/PackageManagers/FlatpakInstall.sh
chmod +x RockyServer/SCRIPTS/Layer 2/PackageManager/PackageManagers/wgetinstall.sh



#repositories
chmod +x RockyServer/SCRIPTS/Layer 2/PackageManager/repositories/enterpriseextras.sh
chmod +x RockyServer/SCRIPTS/Layer 2/PackageManager/repositories/repositoryuniverse.sh







##layer 3


chmod +x RockyServer/SCRIPTS/Layer 3/installer scripts/containers/dockerinstall.sh
chmod +x RockyServer/SCRIPTS/Layer 3/installer scripts/containers/Microk8s.sh


##cyber sec
chmod +x RockyServer/SCRIPTS/Layer 3/installer scripts/utilities/cyber-sec/exploitation/beefinstall.sh
chmod +x RockyServer/SCRIPTS/Layer 3/installer scripts/utilities/cyber-sec/exploitation/metasploitinstall.sh
chmod +x RockyServer/SCRIPTS/Layer 3/installer scripts/utilities/cyber-sec/exploitation/niktoinstall.sh

chmod +x RockyServer/SCRIPTS/Layer 3/installer scripts/utilities/cyber-sec/networking/netcatinstall.sh
chmod +x RockyServer/SCRIPTS/Layer 3/installer scripts/utilities/cyber-sec/networking/nmapinstall.sh

chmod +x RockyServer/SCRIPTS/Layer 3/installer scripts/utilities/cyber-sec/OSInt/sherlock.sh



chmod +x RockyServer/SCRIPTS/Layer 3/installer scripts/utilities/Files/Nextcloud/nextcloudinstall.sh
chmod +x RockyServer/SCRIPTS/Layer 3/installer scripts/utilities/Files/transmission/transmission-li.sh
chmod +x RockyServer/SCRIPTS/Layer 3/installer scripts/utilities/Files/jupyterinstall.sh

chmod +x RockyServer/SCRIPTS/Layer 3/installer scripts/utilities/Network/nordvpn/nordvpn.sh
chmod +x RockyServer/SCRIPTS/Layer 3/installer scripts/utilities/Network/openvpn/openvpninstall.sh


chmod +x RockyServer/SCRIPTS/Layer 4/container config/pullcontainers.sh

chmod +x RockyServer/SCRIPTS/Layer 5/login/meshnetsetup.sh

chmod +x RockyServer/SCRIPTS/Layer 5/rootpermissions.sh

chmod +x RockyServer/RockyServer/fullsetup.py

cd RockyServer/RockyServer

./fullsetup.py