# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
        config.vm.hostname = "Zabbixserver1"
        config.vm.box = "sbeliakou/centos-6.7-x86_64"
	config.vm.network :private_network, ip: "192.168.30.50"
        config.vm.provider :virtualbox do |vm|
                vm.name = "Zabbixserver1"
                vm.customize ["modifyvm", :id, "--memory", 2048]                
        	end

  	config.vm.provision "ansible" do |ansible|
    		ansible.playbook = 'source/provision.yml'
    		ansible.verbose = 'vv'
 		end
end
