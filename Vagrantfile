# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  #configure bash environment to prevent "stdin is not tty" error"
  config.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"

  config.vm.box_url = "https://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box"
  config.vm.box = "fe-ubuntu14.04-docker"

  # Setup IP address to use to access your virtual box
  # There is behavior that will sometimes require you to do
  # vagrant reload right after doing vagrant up to be able to use this
  config.vm.network "private_network", ip: "10.10.10.23"

  # Uncomment the line below and set first param to tell Vagrant what local folder you want mapped to vagrant machines ~/development
  # config.vm.synced_folder "~/development", "/home/vagrant/development"

  # Provider-specific configuration so you can fine-tune various

  config.vm.provider "virtualbox" do |vb|
    # Boot in headless mode
    vb.gui = false

    # Use VBoxManage to customize the VM. For example to change memory:
    vb.customize ["modifyvm", :id, "--memory", "2048"]

    # Give vagrant box nat dns host resolver (give me internetS :P )
    vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
  end

  #shell script to pre provision machine by updating Puppet (pre install provisioning)
  config.vm.provision :shell, :path => "sh/preinstall.sh"

  config.vm.provision "puppet" do |puppet|
    # if you need puppet modules
    puppet.module_path = "puppet/modules"
    # puppet manifest folder
    puppet.manifests_path = "puppet/manifests"
    # main manifest file
    puppet.manifest_file  = "main.pp"
    # In case that you have no idea what is happening (but you need to), uncomment line below
    # puppet.options = "--verbose --debug"
  end

  # initializing machine (post install provisioning)
  config.vm.provision :shell, :path => "sh/postinstall.sh"

  # To resolve fqdn problem appearing due improper Vagrant box naming
  config.vm.hostname = "docker.quantum-vagrant.com"

end
