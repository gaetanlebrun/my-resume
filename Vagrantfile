# -*- mode: ruby -*-
# vi: set ft=ruby :

$bootstrap = <<EOF
"===> I am initializing..."

"===> I am updating apt packages"
sudo apt-get update

"===> I am install git and texlive packages"
sudo apt-get -y install git texlive texlive-latex-extra
EOF

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.provision "shell", inline: $bootstrap
  config.vm.synced_folder ".", "/vagrant/my-resume"
end
