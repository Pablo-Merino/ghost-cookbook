# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.hostname = "ghost-pablo"
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"

  config.hostmanager.enabled = true
  config.hostmanager.manage_host = true
  config.vm.hostname = 'ghost-pablo.local'
  config.hostmanager.aliases = 'ghost-pablo.local'

  config.berkshelf.enabled = true
  config.omnibus.chef_version = :latest

  config.vm.network :private_network, ip: "33.33.33.200"

  config.vm.provision :chef_solo do |chef|
    chef.log_level = :debug

    chef.run_list = [
        "recipe[ghost-pablo::default]"
    ]
  end
end
