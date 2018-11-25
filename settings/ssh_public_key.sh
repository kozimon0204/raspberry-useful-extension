#
# Setup ssh login via public keys
#
# After run this shell, you need to overwrite '/etc/ssh/sshd_config'
# -----
# RSAAuthentication    yes
# PubkeyAuthentication yes
# AuthorizedKeysFile   %h/.ssh/authorized_keys
# -- if you'er stricted
# PermitRootLogin no
# PasswordAuthentication no
# ----
# After overwrite this, you need to run 'sudo /etc/init.d/ssh restart'
#

cd ~
SCRIPT_DIR=$(cd $(dirname $0); pwd)
echo $SCRIPT_DIR

mkdir .ssh

# Get public key via web
curl https://github.com/kozimon0204.keys > id_rsa.pub
cat id_rsa.pub >> .ssh/authorized_keys

# Change auth
chmod 700 .ssh
chmod 600 .ssh/authorized_keys

rm id_rsa.pub

