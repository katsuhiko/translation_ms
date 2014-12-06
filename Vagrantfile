# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/trusty64"

  # config.vm.network "forwarded_port", guest: 80, host: 8080

  config.vm.network "private_network", ip: "192.168.33.10"

  config.vm.synced_folder "..", "/home/vagrant/projects", :nfs => true

  config.vm.provider "virtualbox" do |vb|
    # vb.gui = true
    vb.customize ["modifyvm", :id, "--memory", "1024"]
  end

  config.vm.provision "chef_solo" do |chef|
    chef.cookbooks_path = ["cookbooks", "site-cookbooks"]

    chef.add_recipe "apt"
    chef.add_recipe "locales"
    chef.add_recipe "vim"
    chef.add_recipe "mysql::server"
    chef.add_recipe "mysql::client"
    chef.add_recipe "redisio"
    chef.add_recipe "redisio::enable"
    chef.add_recipe "nodebrew"
    chef.add_recipe "ruby_build"
    chef.add_recipe "rbenv::user"
    chef.add_recipe "rbenv::vagrant"
    chef.add_recipe "java"

    chef.json = {
      locales: {
        default: "ja_JP.utf8"
      },
      mysql: {
        version: "5.5",
        allow_remote_root: true,
        server_root_password: ""
      },
      rbenv: {
        user_installs: [{
          user: "vagrant",
          rubies: ["2.1.2"],
          global: "2.1.2",
          gems: {
            "2.1.2" => [{
              name: "bundler",
              name: "rails"
            }]
          }
        }]
      },
      nodebrew: {
        nodes: [{
          version: "0.10.31"
        }],
        use: "0.10.31"
      },
      java: {
        jdk_version: "7"
      }
    }
  end

  # Interim correspondence of the problems
  # that the process of mysql rises two
  config.vm.provision "shell", inline: "service mysql restart"
end
