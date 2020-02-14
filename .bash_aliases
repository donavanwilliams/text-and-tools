#######################
##  Standard Aliases ##
#######################

# Uses the pwgen command to generate password
# Install with: sudo apt-get install pwgen
alias bdw-gen-pass='pwgen 16 1 -n 3 -s'
alias bdw-gen-pass-strong='pwgen 16 1 -n 3 -y 2 -s'

# SERVER COMMANDS
alias bdw-update-server='sudo apt-get update -y && sudo apt-get upgrade -y'
alias bdw-update-server-full='sudo apt-get update -y && sudo apt-get upgrade -y && sudo apt-get dist-upgrade -y'
alias bdw-update-list='sudo apt list --upgradable'
alias bdw-ip-address='dig +short myip.opendns.com @resolver1.opendns.com'

# RESTART COMMANDS
alias bdw-restart-server='sudo shutdown -r now'
alias bdw-restart-nginx='sudo service nginx restart'
alias bdw-restart-apache='sudo service apache2 restart'
alias bdw-restart-shell='source ~/.bashrc'
alias bdw-restart-webserver='sudo service `bdw-which-webserver` restart'
alias bdw-rebuild-aliases='wget https://raw.githubusercontent.com/donavanwilliams/text-and-tools/master/.bash_aliases -O ~/.bash_aliases && bdw-restart-shell'

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
alias bdw-which-test='echo yes'

## get rid of command not found ##
alias cd..='cd ..'

## a quick way to get out of current directory ##
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'
alias lsa='ls -al'

## pass options to free ##
alias meminfo='free -m -l -t'

## get top process eating memory
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'

## get top process eating cpu ##
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'

## Get server cpu info ##
alias cpuinfo='lscpu'
