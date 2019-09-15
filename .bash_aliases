###########################################################
##  Brian Williams Standard Aliases - Updated 2019-09-14 ##
###########################################################

# Uses the pwgen command to generate password
# Install with: sudo apt-get install pwgen
alias bdw-gen-pass='pwgen 16 1 -n 3 -s'
alias bdw-gen-pass-strong='pwgen 16 1 -n 3 -y 2 -s'

# SERVER COMMANDS
alias bdw-update-server='sudo apt-get update -y && sudo apt-get upgrade -y'
alias bdw-update-server-full='sudo apt-get update -y && sudo apt-get upgrade -y && sudo apt-get dist-upgrade -y'
alias bdw-update-list='sudo apt list --upgradable'

# RESTART COMMANDS
alias bdw-restart-server='sudo shutdown -r now'
alias bdw-restart-nginx='sudo service nginx restart'
alias bdw-restart-apache='sudo service apache2 restart'
alias bdw-restart-shell='source ~/.bashrc'
alias bdw-restart-webserver='sudo service `bdw-which-webserver` restart'

# VERSION COMMANDS
alias bdw-version-mysql='mysql -V'
alias bdw-version-php='php -v'
alias bdw-version-apache='apachectl -v'
alias bdw-version-nginx='nginx -v'
alias bdw-version-openssl='openssl version'
alias bdw-version-ubuntu='lsb_release -a'
alias bdw-version-server='cat /etc/*release'

# WHICH COMMANDS
alias bdw-which-webserver='~/scripts/which_webserver.sh'
