#!/bin/python


import subprocess

def installers():

    ##install package managers
    def pkgmngr():
        subprocess.call(['sh', 'RockyServer/SCRIPTS/Layer2/PackageManager/PackageManagers/APTInstall.sh'])
        subprocess.call(['sh', 'RockyServer/SCRIPTS/Layer2/PackageManager/PackageManagers/APTinstaller.sh'])
        subprocess.call(['sh', 'RockyServer/SCRIPTS/Layer2/PackageManager/PackageManagers/curlinstall.sh'])
        subprocess.call(['sh', 'RockyServer/SCRIPTS/Layer2/PackageManager/PackageManagers/FlatpakInstall.sh'])
        subprocess.call(['sh', 'RockyServer/SCRIPTS/Layer2/PackageManager/PackageManagers/PIPinstall.sh'])
        subprocess.call(['sh','RockyServer/SCRIPTS/Layer2/PackageManager/PackageManagers/snapinstall.sh'])
        subprocess.call(['sh', 'RockyServer/SCRIPTS/Layer2/PackageManager/PackageManagers/wgetinstall.sh'])
    def repositories():
        subprocess.call(['sh', 'RockyServer/SCRIPTS/Layer2/PackageManager/repositories/enterpriseextras.sh'])
        subprocess.call(['sh', 'RockyServer/SCRIPTS/Layer2/PackageManager/repositories/repositoryuniverse.sh'])
    pkgmngr()
    repositories()




def languageconfig():

    ##install python packages
    def pythonsetup():
        #install flask web framework
        subprocess.call(['sh', 'RockyServer/RockyServer/Layer2/languages/python/flaskinstall.sh'])
        #install kivy gui framework
        subprocess.call(['sh', 'RockyServer/RockyServer/Layer2/languages/python/kivyinstall.sh'])

    def rubysetup():
        #install ruby
        subprocess.call(['sh', 'RockyServer/RockyServer/Layer2/languages/ruby/rubyinstall.sh'])
        #install rails
        subprocess.call(['sh', 'RockyServer/RockyServer/Layer2/languages/ruby/railsinstall.sh'])
    pythonsetup()
    rubysetup()










##set up file system
def makedirs():
    #setup docker directories
    subprocess.call(['sh', 'RockyServer/RockyServer/Layer2/directories/dockerdirs.sh'])
    #setup utility directories
    subprocess.call(['sh', 'RockyServer/RockyServer/Layer2/directories/utilitydirs.sh'])
    makedirs()





#install services/apps or whatever idek anymore

def services():

    #container services
    def containers():
        subprocess.call(['sh', 'RockyServer/SCRIPTS/Layer3/installer-scripts/containers/dockerinstall.sh'])
        subprocess.call(['sh', 'RockyServer/SCRIPTS/Layer3/installer-scripts/containers/Microk8s.sh'])
        
    
    def cybersectools():
        def exploits():
            subprocess.call(['sh', 'RockyServer/SCRIPTS/Layer3/installer-scripts/utilities/cyber-sec/exploitation/beefinstall.sh'])
            subprocess.call(['sh', 'RockyServer/SCRIPTS/Layer3/installer-scripts/utilities/cyber-sec/exploitation/metasploitinstall.sh'])
            subprocess.call(['sh', 'RockyServer/SCRIPTS/Layer3/installer-scripts/utilities/cyber-sec/exploitation/niktoinstall.sh'])
        
        def networktools():
            subprocess.call(['sh', 'RockyServer/SCRIPTS/Layer3/installer-scripts/utilities/cyber-sec/networking/netcatinstall.sh'])
            subprocess.call(['sh', 'RockyServer/SCRIPTS/Layer3/installer-scripts/utilities/cyber-sec/networking/nmapinstall.sh'])
            subprocess.call(['sh', 'RockyServer/SCRIPTS/Layer3/installer-scripts/utilities/Network/nordvpn/nordvpn.sh'])
            subprocess.call(['sh','RockyServer/SCRIPTS/Layer3/installer-scripts/utilities/Network/openvpn/openvpninstall.sh'])

        def OSINT():
            subprocess.call(['sh', 'RockyServer/SCRIPTS/Layer3/installer-scripts/utilities/cyber-sec/OSInt/sherlock.sh'])

        exploits()
        networktools()
        OSINT()

    def filemanagement():
        subprocess.call(['sh', 'RockyServer/SCRIPTS/Layer3/installer-scripts/utilities/Files/Nextcloud/nextcloudinstall.sh'])
        subprocess.call(['sh', 'RockyServer/SCRIPTS/Layer3/installer-scripts/utilities/Files/transmission/transmission-li.sh'])
        subprocess.call(['sh', 'RockyServer/SCRIPTS/Layer3/installer-scripts/utilities/Files/jupyterinstall.sh'])

    containers()
    cybersectools()
    filemanagement()
        





##final configurations
def finishsetup():
    #setup docker
    subprocess.call(['sh', 'RockyServer/SCRIPTS/Layer5/rootpermissions.sh'])
    subprocess.call(['sh', 'RockyServer/SCRIPTS/Layer4/container-config/pullcontainers.sh'])
    subprocess.call(['sh', 'RockyServer/SCRIPTS/Layer5/login/meshnetsetup.sh'])



installers()

languageconfig()

makedirs()

services()

finishsetup()






























