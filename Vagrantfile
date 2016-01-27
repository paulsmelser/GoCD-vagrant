# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "debian/jessie64"
  config.vm.provision :shell, path: "bootstrap.sh"
  config.vm.network :forwarded_port, guest: 8153, host: 8153, auto_correct: true
  config.vm.network :forwarded_port, guest: 8154, host: 8154, auto_correct: true
  config.vm.provider "virtualbox" do |vb|
    vb.gui = false
    vb.memory = 8192
    vb.cpus = 2
  end
end
