# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
    config.vm.box = "kalilinux/rolling"

    # Install missing plugins
    unless Vagrant.has_plugin?("vagrant-vbguest")
        puts 'Installing vagrant-vbguest Plugin...'
        system('vagrant plugin install vagrant-vbguest')
    end

    unless Vagrant.has_plugin?("vagrant-reload")
        puts 'Installing vagrant-reload Plugin...'
        system('vagrant plugin install vagrant-reload')
    end

    # VirtualBox specific settings
    config.vm.provider "virtualbox" do |vb|

        # Virtualbox VM name
        vb.name = "test1"

        # Show VirtualBox GUI when booting the machine
        vb.gui = true
    
        # Customize the amount of memory on the VM:
        vb.memory = "1024"
        # vb.memory = "2048"
        # vb.memory = "3072"
        # vb.memory = "4096"

        # Number of CPU cores
        vb.cpus = 2

        # Video memory
        vb.customize ["modifyvm", :id, "--vram", "128"]

        # Enable shared clipboard
        vb.customize ["modifyvm", :id, "--clipboard", "bidirectional"]

        # Disable remote display
        vb.customize ["modifyvm", :id, "--vrde", "off"]

    end

    # Update guest additions 
    config.vbguest.auto_update = true

    # Provision the machine with a shell script
    config.vm.provision "shell", path: "provision.sh", :args => "--keyboard=hr --timezone=Europe/Vienna"

    # Copy .bashrc
    config.vm.provision "file", source: ".bashrc", destination: ".bashrc"

    # Copy .bash_aliases
    config.vm.provision "file", source: ".bash_aliases", destination: ".bash_aliases"

    # Reload after provision
    config.vm.provision :reload
end
