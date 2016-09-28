# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
#------------------------Agent-----------------------------------
        config.vm.define "zubagent", primary: true do |zubagent|
                zubagent.vm.box = "sbeliakou/centos-6.7-x86_64"
                zubagent.vm.network "private_network", ip: "192.168.30.51"
                zubagent.vm.hostname = "zabbixagent"
                zubagent.vm.provider "virtualbox" do |vm1|
                        vm1.cpus = 1
                        vm1.memory = "2048"
                end

	config.vm.provision "ansible" do |ansible|
    		ansible.playbook = 'source/provision.yml'
    		ansible.verbose = 'vv'
  		end
        config.vm.provision "shell", inline: "echo The Zabbix-AGENT is DONE!"
	end
end
