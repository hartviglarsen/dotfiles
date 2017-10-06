# List stuff
alias lsa="ls -la"
alias lsah="ls -lah"

# Find empty directories
alias fed="find . -depth -type d -empty"
# Find and touch a .gitkeep in empty directories
alias fedkeep="find . -depth -type d -empty -not -path './.git/*' -exec touch {}/.gitkeep \;"

# Public IP
alias myip="curl http://ipecho.net/plain; echo"

# Print PATH with newlines
alias path='echo -e ${PATH//:/\\n}'

# Httpd (Apache), MariaDB and PHP-fpm
alias sup="sudo systemctl start httpd && sudo systemctl start mariadb && sudo systemctl start php-fpm"
alias sdown="sudo systemctl stop httpd && sudo systemctl stop mariadb && sudo systemctl stop php-fpm"
alias srestart="sudo systemctl restart httpd && sudo systemctl restart mariadb && sudo systemctl restart php-fpm"

# I'm lazy
alias www="cd /var/www/"
alias html="cd /var/www/html/"
alias vhosts="cd /var/www/vhosts/"
