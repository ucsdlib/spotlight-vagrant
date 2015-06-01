#!/bin/sh

SHARED_DIR=$1
if [ -f "$SHARED_DIR/install_scripts/config" ]; then
  . $SHARED_DIR/install_scripts/config
fi
cd $HOME_DIR

# fix gems ownership
sudo chown -R vagrant:vagrant /var/lib/gems
sudo chmod -R g+s /var/lib/gems

# create new spotlight app
echo "y\n$ADMIN_EMAIL\n$ADMIN_PASS" | rails new spotlight -m $SHARED_DIR/install_scripts/spotlight_template.rb

cd spotlight
rake jetty:start
nohup rails s -b 0.0.0.0 > $HOME_DIR/spotlight.log 2>&1 &
